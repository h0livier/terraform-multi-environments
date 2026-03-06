variable "resource_group" {
  description = "The data related to the resource group to create"
  type        = object({
    name = string
    location = string
  })
}