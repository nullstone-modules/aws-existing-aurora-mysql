data "aws_db_instance" "this" {
  db_instance_identifier = var.db_identifier
}

locals {
  db_security_group_id = data.aws_db_instance.this.vpc_security_groups[0]
}
