1. setup az login to test cli connection to azure

2. create resources

azurerm_resource_group
 ├── azurerm_virtual_network
 │     └── azurerm_subnet
 │          └── azurerm_network_interface
 │                └── azurerm_public_ip
 │
 └── azurerm_virtual_machine
       ├── azurerm_network_interface (attached)
       └── azurerm_os_disk / storage profile

4. After Azure subscription is active:
    - Run `az login`
    - Optionally create a Service Principal and export:
        ARM_CLIENT_ID
        ARM_CLIENT_SECRET
        ARM_TENANT_ID
        ARM_SUBSCRIPTION_ID