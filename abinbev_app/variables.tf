variable "client_id" {
  description = "The client ID of the service principal"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID of the Azure subscription"
  type        = string
}

variable "subscription_id" {
  description = "The subscription ID of the Azure subscription"
  type        = string
}

variable "rg_location" {
  description = "The location where the resources will be created"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string

}

variable "app_service_name" {
  description = "The name of the App Service Plan"
  type        = string
}