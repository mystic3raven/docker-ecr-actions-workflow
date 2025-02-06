##terraform {
 # backend "s3" {
 #   bucket         = "terraform-backend-primary-region"
 #   key           = "docker-ecr/terraform.tfstate"
#    region        = "us-west-2"
 #   dynamodb_table = "terraform-backend-ddb"
 # }
##}
terraform {
  backend "s3" {
    bucket         = "mybucketfortoday"
    key            = "docker-ecr/terraform-mystic3raven_docker-ecr-actions-workflow.tfstate"
    region         = "us-east-1"
    dynamodb_table = "TerraformLocks"
    encrypt        = true
  }
}
