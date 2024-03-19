output "db_instance_arn" {
  value       = data.aws_rds_cluster.this.arn
  description = "string ||| ARN of the Postgres instance"
}

output "db_instance_id" {
  value       = data.aws_rds_cluster.this.id
  description = "string ||| ID of the Postgres instance"
}

output "db_master_secret_name" {
  value       = aws_secretsmanager_secret.master.name
  description = "string ||| The name of the secret in AWS Secrets Manager containing the password"
}

output "db_endpoint" {
  value       = db_endpoint
  description = "string ||| The endpoint URL to access the Postgres instance."
}

output "db_security_group_id" {
  value       = local.db_security_group_id
  description = "string ||| The ID of the security group attached to the Postgres instance."
}

output "db_admin_function_name" {
  value       = module.db_admin.function_name
  description = "string ||| AWS Lambda Function name for database admin utility"
}
