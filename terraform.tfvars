# Resource Groups Configuration
resource_groups = {
  rg1 = {
    name     = "rg-demo-dev-01"
    location = "eastus"
    tags = {
      Environment = "Dev"
      ManagedBy   = "Terraform"
    }
  }
  rg2 = {
    name     = "rg-demo-dev-02"
    location = "eastus"

  }
}

# Virtual Networks Configuration
vnets = {
  vnet1 = {
    name                = "vnet-demo-dev-01"
    address_space       = ["10.0.0.0/16"]
    location            = "eastus"
    resource_group_name = "rg1"
    tags = {
      Environment = "Dev"
      ManagedBy   = "Terraform"
    }
  }
}

# Subnets Configuration
subnets = {
  subnet1 = {
    name                 = "snet-demo-dev-01"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

# Storage Accounts Configuration
storage_accounts = {
  sa1 = {
    name                     = "stddemodev01acc"
    resource_group_name      = "rg1"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = {
      Environment = "Dev"
      ManagedBy   = "Terraform"
    }
  }
}