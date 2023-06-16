/*Resource creation: Neptune Subnet Group*/
resource "aws_neptune_subnet_group" "this_subnet_group" {
  for_each    = var.core-db-subnet-groups
  name        = each.value.name
  description = each.value.description
  subnet_ids  = each.value.subnets
  tags = {
    Name = each.key
  }
}

/*Resource creation: Neptune Parameter Group*/
resource "aws_neptune_parameter_group" "this_parameter_group" {
  for_each    = { for k, user in var.core-db-parameter-groups : k => pg if pg.cluster }
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

/*Resource creation: Neptune Cluster Parameter Group*/
resource "aws_neptune_cluster_parameter_group" "this_cluster_parameter_group" {
  //for_each    = var.core-db-parameter-groups
  for_each    = { for k, user in var.core-db-parameter-groups : k => pg if pg.cluster }
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
