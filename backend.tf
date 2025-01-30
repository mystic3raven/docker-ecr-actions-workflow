terraform {
  backend "s3" {
    bucket         = "terraform-backend-primary-region"
    key           = "docker-ecr/terraform.tfstate"
    region        = "us-west-2"
    dynamodb_table = "terraform-backend-ddb"
  }
}
