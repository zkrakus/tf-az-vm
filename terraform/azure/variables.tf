variable "env" {
  description = "The environment where all resources will be deployed"
  type        = string
  default     = "demo"
}

variable "location" {
  description = "Azure region where all resources will be deployed"
  type        = string
  default     = "eastus"
}

variable "vnet_cidr" {
  description = "CIDR block for the virtual network"
  type        = string
}

variable "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}