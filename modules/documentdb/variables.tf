variable "core-vpc-subnets" {}
/*
variable "core-dbs" {
  type = map(object({
    region = optional(string)
    name   = string    
  }))
}
*/

variable "core-db-subnet-groups" {
  type = map(object({
    region      = optional(string)
    name        = string
    description = optional(string)
    subnets     = list(string)
  }))
}

variable "core-db-parameter-groups" {
  type = map(object({
    region      = optional(string)
    name        = string
    description = optional(string)
    family      = string
    parameters = optional(list(object({
      param-name  = string
      param-value = string
    })), [])
  }))
}
