variable "aws_role_arn" {
  description = "IAM Role ARN assumed by CircleCI via OIDC"
  type        = string
}

provider "aws" {
  region = "us-west-1"

  assume_role {
    role_arn = var.aws_role_arn
  }
}
