/*Initialization...*/
variable "data-vpcs" {}
variable "data-vpc-subnets" {}
variable "file-rds-aurora-mysql-dbs" { default = "" }
variable "file-rds-aurora-postgresql-dbs" { default = "" }
variable "file-rds-mysql-dbs" { default = "" }
variable "file-rds-postgresql-dbs" { default = "" }
variable "file-rds-mariadb-dbs" { default = "" }
variable "file-rds-oracle-dbs" { default = "" }
variable "file-rds-mssql-dbs" { default = "" }
variable "file-file-documentdb-dbs" { default = "" }
variable "file-file-neptune-dbs" { default = "" }
variable "file-file-elasticache-dbs" { default = "" }
variable "file-file-memorydb-redis-dbs" { default = "" }
variable "file-file-quantum-ledger-dbs" { default = "" }
variable "file-file-keyspaces-dbs" { default = "" }
