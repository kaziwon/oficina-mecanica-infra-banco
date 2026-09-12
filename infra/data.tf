data "aws_caller_identity" "current" {}

locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Component   = "database-infrastructure"
  }

  public_subnets   = zipmap(var.availability_zones, var.public_subnet_cidrs)
  database_subnets = zipmap(var.availability_zones, var.database_subnet_cidrs)
}
