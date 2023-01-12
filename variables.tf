











# variable "subscription_id" {
#   description = "Azure subscription id."
#   type        = string
#   nullable    = false
#   default     = "0d0ab7b2-efa0-4c0c-899c-f70cbb0dce55"
# }

variable "resource_location" {
  description = "Resource location region name."
  type        = string
  nullable    = false
  default     = "Southeast Asia"
}

variable "resource_tags" {
  description = "Resource tag identification."
  nullable    = false
  default = {
    email    = "john.ajera@ncs.com.sg"
    owner    = "John Ajera"
    use_case = "azure-vnet_provisioning"
  }
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
  nullable    = false
  default     = "RG-EDMS-IPL-Cloud-john.ajera"
}

# variable "ipv4_address_spaces" {
#   description = "IPv4 address spaces."
#   type        = list(string)
#   default     = ["10.1.0.0/16", "10.2.0.0/16"]
# }

# variable "ipv6_address_spaces" {
#   description = "IPv6 address spaces."
#   type        = list(string)
#   default     = ["ace:cab:deca::/48"]
# }

# # if bastion is required, ensure bastion name must be == AzureBastionSubnet
# variable "subnets_config" {
#   description = "Subnet configuration list."
#   type = list(object({
#     name              = string
#     address_prefixes  = list(string)
#     service_endpoints = list(string)
#     bastion           = bool
#     fw_protection     = bool
#   }))
#   default = [
#     {
#       name              = "production",
#       address_prefixes  = ["10.1.1.0/24"],
#       service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub"],
#       bastion           = false,
#       fw_protection     = false
#     },
#     {
#       name              = "backup",
#       address_prefixes  = ["10.2.1.0/24"],
#       service_endpoints = [],
#       bastion           = false,
#       fw_protection     = false
#     },
#     {
#       name              = "management",
#       address_prefixes  = ["10.1.2.0/24"],
#       service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"],
#       bastion           = false,
#       fw_protection     = false
#     },
#     {
#       name              = "AzureBastionSubnet",
#       address_prefixes  = ["10.2.2.0/26"],
#       service_endpoints = [],
#       bastion           = true,
#       fw_protection     = false
#     },
#     {
#       name              = "AzureFirewallSubnet",
#       address_prefixes  = ["10.1.3.0/26"],
#       service_endpoints = [],
#       bastion           = false,
#       fw_protection     = true
#     }
#   ]
# }

# variable "ddos_protection" {
#   description = "DDos Protection."
#   type        = bool
#   default     = true
# }
