# Configure the Azure provider
provider "azurerm" {
    features {}
}

# Create a resource group
resource "azurerm_resource_group" "demo" {
    name     = "demo-resources"
    location = "West Europe"
}

# Create an App Service plan with Standard tier
resource "azurerm_app_service_plan" "demo" {
    name                = "demo-appserviceplan"
    location            = azurerm_resource_group.demo.location
    resource_group_name = azurerm_resource_group.demo.name
    sku {
        tier = "Standard"
        size = "S1"
    }
}

# Create an App Service
resource "azurerm_app_service" "demo" {
    name                = "DemoApp-appservice"
    location            = azurerm_resource_group.demo.location
    resource_group_name = azurerm_resource_group.demo.name
    app_service_plan_id = azurerm_app_service_plan.demo.id

    app_settings = {
        "WEBSITE_RUN_FROM_PACKAGE" = "1"
    }
}

# Output the App Service URL
output "app_service_default_hostname" {
    value = azurerm_app_service.demo.default_site_hostname
}