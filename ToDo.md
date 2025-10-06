1. setup az login to test cli connection to azure

2. Setup Project structure 

/terraform/
  azure/
    main.tf
    variables.tf
    outputs.tf
    providers.tf
  TODO.md


3. create resources

azurerm_resource_group
 ├── azurerm_virtual_network
 │     └── azurerm_subnet
 │          └── azurerm_network_interface
 │                └── azurerm_public_ip
 │
 └── azurerm_virtual_machine
       ├── azurerm_network_interface (attached)
       └── azurerm_os_disk / storage profile