/*Database Module | RDS Aurora (MySQL Compatible)*/
module "rds-aurora-mysql" {
  source                    = "./modules/rds-aurora-mysql"
  core-rds-aurora-mysql-dbs = local.lst-rds-aurora-mysql-dbs
}

/*Database Module | RDS Aurora (PostgreSQL Compatible)*/
module "rds-aurora-postgresql" {
  source                         = "./modules/rds-aurora-postgresql"
  core-rds-aurora-postgresql-dbs = local.lst-rds-aurora-postgresql-dbs
}

/*Database Module | RDS MySQL*/
module "rds-mysql" {
  source             = "./modules/rds-mysql"
  core-rds-mysql-dbs = local.lst-rds-mysql-dbs
}

/*Database Module | RDS PostgreSQL*/
module "rds-postgresql" {
  source                  = "./modules/rds-postgresql"
  core-rds-postgresql-dbs = local.lst-rds-postgresql-dbs
}

/*Database Module | RDS MariaDB*/
module "rds-mariadb" {
  source               = "./modules/rds-mariadb"
  core-rds-mariadb-dbs = local.lst-rds-mariadb-dbs
}

/*Database Module | RDS Oracle*/
module "rds-oracle" {
  source              = "./modules/rds-oracle"
  core-rds-oracle-dbs = local.lst-rds-oracle-dbs
}

/*Database Module | RDS Microsoft SQL Server*/
module "rds-mssql" {
  source             = "./modules/rds-mssql"
  core-rds-mssql-dbs = local.lst-rds-mssql-dbs
}
