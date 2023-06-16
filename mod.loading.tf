/*Data loading...*/
locals {
  data-rds-aurora-mysql-dbs        = try(jsondecode(file(var.file-rds-aurora-mysql-dbs)), [])
  data-rds-aurora-postgresql-dbs   = try(jsondecode(file(var.file-rds-aurora-postgresql-dbs)), [])
  data-rds-mysql-dbs               = try(jsondecode(file(var.file-rds-mysql-dbs)), [])
  data-rds-postgresql-dbs          = try(jsondecode(file(var.file-rds-postgresql-dbs)), [])
  data-rds-mariadb-dbs             = try(jsondecode(file(var.file-rds-mariadb-dbs)), [])
  data-rds-oracle-dbs              = try(jsondecode(file(var.file-rds-oracle-dbs)), [])
  data-rds-mssql-dbs               = try(jsondecode(file(var.file-rds-mssql-dbs)), [])
  data-documentdb-dbs              = try(jsondecode(file(var.file-documentdb-dbs)), [])
  data-documentdb-subnet-groups    = try(jsondecode(file(var.file-documentdb-subnet-groups)), [])
  data-documentdb-parameter-groups = try(jsondecode(file(var.file-documentdb-parameter-groups)), [])

  data-neptune-dbs              = try(jsondecode(file(var.file-neptune-dbs)), [])
  data-neptune-subnet-groups    = try(jsondecode(file(var.file-neptune-subnet-groups)), [])
  data-neptune-parameter-groups = try(jsondecode(file(var.file-neptune-parameter-groups)), [])

  data-elasticache-dbs    = try(jsondecode(file(var.file-elasticache-dbs)), [])
  data-memorydb-redis-dbs = try(jsondecode(file(var.file-memorydb-redis-dbs)), [])
  data-quantum-ledger-dbs = try(jsondecode(file(var.file-quantum-ledger-dbs)), [])
  data-keyspaces-dbs      = try(jsondecode(file(var.file-keyspaces-dbs)), [])
}

/*Data decoding...*/
locals {
  lst-rds-aurora-mysql-dbs      = try({ for obj in local.data-rds-aurora-mysql-dbs.rds-aurora-mysql-dbs : obj.name => obj }, tomap({}))
  lst-rds-aurora-postgresql-dbs = try({ for obj in local.data-rds-aurora-postgresql-dbs.rds-aurora-postgresql-dbs : obj.name => obj }, tomap({}))
  lst-rds-mysql-dbs             = try({ for obj in local.data-rds-mysql-dbs.rds-mysql-dbs : obj.name => obj }, tomap({}))
  lst-rds-postgresql-dbs        = try({ for obj in local.data-rds-postgresql-dbs.rds-postgresql-dbs : obj.name => obj }, tomap({}))
  lst-rds-mariadb-dbs           = try({ for obj in local.data-rds-mariadb-dbs.rds-mariadb-dbs : obj.name => obj }, tomap({}))
  lst-rds-oracle-dbs            = try({ for obj in local.data-rds-oracle-dbs.rds-oracle-dbs : obj.name => obj }, tomap({}))
  lst-rds-mssql-dbs             = try({ for obj in local.data-rds-mssql-dbs.rds-mssql-dbs : obj.name => obj }, tomap({}))

  lst-documentdb-dbs              = try({ for obj in local.data-documentdb-dbs.documentdb-dbs : obj.name => obj }, tomap({}))
  lst-documentdb-subnet-groups    = try({ for obj in local.data-documentdb-subnet-groups.documentdb-subnet-groups : obj.name => obj }, tomap({}))
  lst-documentdb-parameter-groups = try({ for obj in local.data-documentdb-parameter-groups.documentdb-parameter-groups : obj.name => obj }, tomap({}))

  lst-neptune-dbs              = try({ for obj in local.data-neptune-dbs.neptune-dbs : obj.name => obj }, tomap({}))
  lst-neptune-subnet-groups    = try({ for obj in local.data-neptune-subnet-groups.neptune-subnet-groups : obj.name => obj }, tomap({}))
  lst-neptune-parameter-groups = try({ for obj in local.data-neptune-parameter-groups.neptune-parameter-groups : obj.name => obj }, tomap({}))


  lst-elasticache-dbs    = try({ for obj in local.data-elasticache-dbs.elasticache-dbs : obj.name => obj }, tomap({}))
  lst-keyspaces-dbs      = try({ for obj in local.data-keyspaces-dbs.keyspaces-dbs : obj.name => obj }, tomap({}))
  lst-memorydb-redis-dbs = try({ for obj in local.data-memorydb-redis-dbs.memorydb-redis-dbs : obj.name => obj }, tomap({}))
  lst-quantum-ledger-dbs = try({ for obj in local.data-quantum-ledger-dbs.quantum-ledger-dbs : obj.name => obj }, tomap({}))
}
