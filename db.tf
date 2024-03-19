data "aws_rds_cluster" "this" {
  cluster_identifier = var.db_identifier
}

locals {
  db_port              = data.aws_rds_cluster.this.port
  db_security_group_id = one(data.aws_rds_cluster.this.vpc_security_group_ids)
  db_endpoint          = "${data.aws_rds_cluster.this.endpoint}:${local.db_port}"
}
