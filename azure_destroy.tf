jerry@zerone:~/DevDir/terraform/azure$ terraform apply -auto-approve
azurerm_resource_group.example: Refreshing state... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_resource_group.example will be destroyed
  # (because azurerm_resource_group.example is not in configuration)
  - resource "azurerm_resource_group" "example" {
      - id         = "/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG" -> null
      - location   = "eastus" -> null
      - name       = "PCI_DSS_RG" -> null
      - tags       = {} -> null
        # (1 unchanged attribute hidden)
    }

Plan: 0 to add, 0 to change, 1 to destroy.
azurerm_resource_group.example: Destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 10s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 20s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 30s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 40s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 50s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 1m0s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 1m10s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 1m20s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 1m30s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 1m40s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 1m50s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 2m0s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 2m10s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 2m20s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 2m30s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 2m40s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 2m50s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 3m0s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 3m10s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/85daa62a-9a76-45aa-9595-003c8bfb49c7/resourceGroups/PCI_DSS_RG, 3m20s elapsed]
azurerm_resource_group.example: Destruction complete after 3m29s

Apply complete! Resources: 0 added, 0 changed, 1 destroyed.