provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "javahome-tf-nv-1234567"
    key    = "terraform.tfstate"
    region = "${var.region}"
    dynamodb_table = "javahome5-tf"
  }
}
