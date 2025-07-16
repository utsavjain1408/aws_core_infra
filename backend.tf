terraform {
  backend "s3" {
    bucket = "terraform.state.backends"
    key    = "aws_core_infra/state"
    region = "us-east-1"
  }
}