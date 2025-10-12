variable "project" {
  description = "Project name (e.g., demovm, formulary, emar)"
  type        = string
}

variable "env" {
  description = "Environment or developer name (e.g., demom zeus, hermes)"
  type        = string
}

variable "location" {
  description = "Azure region for all resources"
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