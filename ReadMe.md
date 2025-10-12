## Terra Commands
### Spool-up 
terraform apply -var-file="env/zeus.tfvars" -auto-approve

### Tear-down
teardown terraform destroy -var-file="env/zeus.tfvars" -auto-approve

## Resources

azurerm_resource_group
 ├── azurerm_virtual_network
 │     └── azurerm_subnet
 │          └── azurerm_network_interface
 │                └── azurerm_public_ip
 │
 └── azurerm_virtual_machine
       ├── azurerm_network_interface (attached)
       └── azurerm_os_disk / storage profile
