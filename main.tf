# Generate random string as prefix to all resources
resource "random_string" "prefix" {
  length  = 5
  special = false
  upper   = true
  lower   = false
  numeric = false
}

# Create resource group to store the resources
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_location

  tags = var.resource_tags
}

# Create Azure Storage account
resource "azurerm_storage_account" "storage" {
  name                      = lower("${random_string.prefix.result}storage1")
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  account_kind              = "StorageV2"
  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"

  static_website {
    index_document     = "index.html"
    error_404_document = "error.html"
  }

  tags = var.resource_tags
}

# Upload index.html
resource "azurerm_storage_blob" "index_html" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source                 = "${path.module}/external/index.html"
}

# Upload error.html
resource "azurerm_storage_blob" "error_html" {
  name                   = "error.html"
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source                 = "${path.module}/external/error.html"
}

output "static_website_endpoint" {
  value = azurerm_storage_account.storage.primary_web_endpoint
}
