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