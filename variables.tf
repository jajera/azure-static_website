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
    use_case = "static website"
  }
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
  nullable    = false
  default     = "static_website_rg"
}
