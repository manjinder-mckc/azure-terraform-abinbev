module "azure_app_service" {
  source = "../modules/app_service"

  app_service_plan_name = var.app_service_plan_name
  location              = var.rg_location
  resource_group_name   = var.rg_name
  app_service_name      = var.app_service_name
  linux_fx_version      = "PYTHON|3.8"
  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
  tags = var.tags
}