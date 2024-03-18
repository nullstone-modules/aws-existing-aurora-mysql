data "aws_rds_cluster" "this" {
  cluster_identifier = var.db_identifier
}

locals {
  db_security_group_id = one(data.aws_rds_cluster.this.vpc_security_group_ids)
}
