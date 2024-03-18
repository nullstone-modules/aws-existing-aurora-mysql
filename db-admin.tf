locals {
  db_admin_subnet_ids = coalescelist(local.private_subnet_ids, local.public_subnet_ids)
}

module "db_admin" {
  source = "api.nullstone.io/nullstone/aws-mysql-db-admin/aws"

  name     = local.resource_name
  tags     = local.tags
  host     = data.aws_rds_cluster.this.endpoint
  username = var.db_admin_username
  password = var.db_admin_password

  network = {
    vpc_id                  = local.vpc_id
    mysql_security_group_id = local.db_security_group_id
    security_group_ids      = []
    subnet_ids              = local.db_admin_subnet_ids
  }
}
