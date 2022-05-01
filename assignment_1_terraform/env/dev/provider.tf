
# provider name and version requirements
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

  }
}


# provider configuration
provider "aws" {
  region = var.aws_region_name
}