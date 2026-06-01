resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-microservices-dev"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "microservices"

  default_node_pool {
    name           = "system"
    node_count     = 2
    vm_size        = "Standard_D2s_v3"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"

    service_cidr   = "172.16.0.0/16"
    dns_service_ip = "172.16.0.10"
  }
}