resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "this" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.this.name
  os_type             = "Linux"
  sku_name            = "Y1"

  depends_on = [azurerm_resource_group.this]
}


resource "azurerm_app_service" "this" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_service_plan.this.id

  site_config {
    linux_fx_version = var.linux_fx_version
  }

  app_settings = var.app_settings

  depends_on = [azurerm_service_plan.this]

  tags = var.tags
}