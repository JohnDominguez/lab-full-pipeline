#DevopsAccount04
variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
  default     = ""
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
  default     = ""
}

variable "client_id" {
  description = "Enter Client ID for Application in Azure AD"
  default     = ""
}

variable "tenant_id" {
  description = "Enter Tenand ID / Directory ID  of your Azure AD. Login Azure id script install cli"
  default     = ""
}

variable "location" {
  description = "The default Azure region for the resource provisioning"
  default     = "East US"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Tag to group resources"
}

variable "resource_group_name" {
  description = "The default Azure region for the resource provisioning"
  default     = "aks-rg"
}

variable "prefix" {
  description = "The Prefix used for all resources in this example"
  default     = "practice-aks"
}

variable "linux_agent_count" {
  type        = "string"
  default     = "1"
  description = "The number of Kubernetes linux agents in the cluster. Allowed values are 1-100 (inclusive). The default value is 1."
}

variable "dns_name_prefix" {
  type        = "string"
  default =     "AKSCluster-Example"
  description = "Sets the domain name prefix for the cluster. The suffix 'master' will be added to address the master agents and the suffix 'agent' will be added to address the linux agents."
}

variable "linux_agent_vm_size" {
  type        = "string"
  default     = "Standard_D2_v2"
  description = "The size of the virtual machine used for the Kubernetes linux agents in the cluster."
}

provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}
