variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "eastus"
}

variable "subscription_id" {
  description = "The Azure subscription ID."
  type        = string
}

variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = "city-vehicles"
}

variable "environment" {
  description = "The environment for the resources."
  type        = string
  default     = "dev"
}
