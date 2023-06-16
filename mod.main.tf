/*Database Module | RDS Aurora (MySQL Compatible)*/
module "rds-aurora-mysql" {
  source   = "./modules/rds-aurora-mysql"
  core-dbs = local.lst-rds-aurora-mysql-dbs
}

/*Database Module | RDS Aurora (PostgreSQL Compatible)*/
module "rds-aurora-postgresql" {
  source   = "./modules/rds-aurora-postgresql"
  core-dbs = local.lst-rds-aurora-postgresql-dbs
}

/*Database Module | RDS MySQL*/
module "rds-mysql" {
  source   = "./modules/rds-mysql"
  core-dbs = local.lst-rds-mysql-dbs
}

/*Database Module | RDS PostgreSQL*/
module "rds-postgresql" {
  source   = "./modules/rds-postgresql"
  core-dbs = local.lst-rds-postgresql-dbs
}

/*Database Module | RDS MariaDB*/
module "rds-mariadb" {
  source   = "./modules/rds-mariadb"
  core-dbs = local.lst-rds-mariadb-dbs
}

/*Database Module | RDS Oracle*/
module "rds-oracle" {
  source   = "./modules/rds-oracle"
  core-dbs = local.lst-rds-oracle-dbs
}

/*Database Module | RDS Microsoft SQL Server*/
module "rds-mssql" {
  source   = "./modules/rds-mssql"
  core-dbs = local.lst-rds-mssql-dbs
}

/*Database Module | DocumentDB*/
module "documentdb" {
  source = "./modules/documentdb"
  //core-dbs                 = local.lst-documentdb-dbs
  core-db-subnet-groups    = local.lst-documentdb-subnet-groups
  core-db-parameter-groups = local.lst-documentdb-parameter-groups
}

/*Database Module | Neptune*/
module "neptune" {
  source = "./modules/neptune"
  //core-dbs                 = local.lst-neptune-dbs
  core-db-subnet-groups    = local.lst-neptune-subnet-groups
  core-db-parameter-groups = local.lst-neptune-parameter-groups
}

/*Database Module | ElastiCache*/
module "elasticache" {
  source   = "./modules/elasticache"
  core-dbs = local.lst-elasticache-dbs
}

/*Database Module | Keyspaces*/
module "keyspaces" {
  source   = "./modules/keyspaces"
  core-dbs = local.lst-keyspaces-dbs
}

/*Database Module | Quantum Ledger Database*/
module "quantum-ledger" {
  source   = "./modules/quantum-ledger"
  core-dbs = local.lst-quantum-ledger-dbs
}

/*Database Module | MemoryDB for Redis*/
module "memorydb-redis" {
  source   = "./modules/memorydb-redis"
  core-dbs = local.lst-memorydb-redis-dbs
}
