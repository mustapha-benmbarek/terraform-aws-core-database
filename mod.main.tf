/*Database Module | DocumentDB*/
module "documentdb" {
  source           = "./modules/documentdb"
  core-vpc-subnets = var.data-vpc-subnets
  //core-dbs                 = local.lst-documentdb-dbs
  core-db-subnet-groups    = local.lst-documentdb-subnet-groups
  core-db-parameter-groups = local.lst-documentdb-parameter-groups
}

/*Database Module | Neptune*/
module "neptune" {
  source           = "./modules/neptune"
  core-vpc-subnets = var.data-vpc-subnets
  //core-dbs                 = local.lst-neptune-dbs
  core-db-subnet-groups    = local.lst-neptune-subnet-groups
  core-db-parameter-groups = local.lst-neptune-parameter-groups
}
