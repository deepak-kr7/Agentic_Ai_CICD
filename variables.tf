variable "resource_groups" {
  description = "Map of resource groups to create"
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string), {})
  }))
}

variable "vnets" {
  description = "Map of virtual networks to create"
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    tags                = optional(map(string), {})
  }))
}

variable "subnets" {
  description = "Map of subnets to create"
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "storage_accounts" {
  description = "Map of storage accounts to create"
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string), {})
  }))
}

variable "ai" {
  default = "B7iEUe5TCSRayYqbwR9itVIgQHNJynFdHfrJPIUyIFMc5ti19MZ8JQQJ99CHACYeBjFXJ3w3AAABACOGQk3i"

}

variable "aii" {
  default = "Dq0VCJnZwMmMq7Gl0b4CO779uq1j7wpqM8QZfXW1491pljiXShRrJQQJ99CHACYeBjFXJ3w3AAABACOGoAbG"

}
