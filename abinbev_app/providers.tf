provider "azurerm" {
  client_id                  = var.client_id
  tenant_id                  = var.tenant_id
  subscription_id            = var.subscription_id
  use_oidc                   = true
  skip_provider_registration = true

  features {}
}