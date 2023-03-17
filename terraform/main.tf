terraform {
  backend "s3" {
    bucket = "kops-476621737173"
    key    = "kops/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "kops-terraform-state-lock"
  }
}