/*Resource creation: DocumentDB Subnet Group*/
resource "aws_docdb_subnet_group" "this_subnet_group" {
  for_each    = var.core-db-subnet-groups
  name        = each.value.name
  description = each.value.description
  subnet_ids  = [for s in each.value.subnets : var.core-vpc-subnets[s].id]
  tags = {
    Name = each.key
  }
}

/*Resource creation: DocumentDB Parameter Group*/
resource "aws_docdb_cluster_parameter_group" "this_parameter_group" {
  for_each    = var.core-db-parameter-groups
  name        = each.value.name
  description = each.value.description
  family      = each.value.family

  dynamic "parameter" {
    for_each = each.value.parameters
    content {
      name  = parameter.value["param-name"]
      value = parameter.value["param-value"]
    }
  }

  tags = {
    Name = each.key
  }
}
