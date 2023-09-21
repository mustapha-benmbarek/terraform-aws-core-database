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

variable "file-documentdb-dbs" { default = "" }
variable "file-documentdb-subnet-groups" { default = "" }
variable "file-documentdb-parameter-groups" { default = "" }


variable "file-neptune-dbs" { default = "" }
variable "file-neptune-subnet-groups" { default = "" }
variable "file-neptune-parameter-groups" { default = "" }

variable "file-elasticache-dbs" { default = "" }
variable "file-memorydb-redis-dbs" { default = "" }
variable "file-quantum-ledger-dbs" { default = "" }
variable "file-keyspaces-dbs" { default = "" }

variable "file-timestream-dbs" { default = "" }
