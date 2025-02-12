terraform {
  backend "s3" {
    bucket = "totsedy"
    region = "us-east-1"
    key = "terraform.tfstate"
  }
}
