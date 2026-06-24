resource "azurerm_resource_group" "rg" {
  name     = "devsecops-v3-rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "devsecops-v3-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "devsecops"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v7"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}

