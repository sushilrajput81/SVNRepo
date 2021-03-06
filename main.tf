
variable "aws_access_key_id"{}
variable "aws_secret_access_key"{}


variable "region" {
  description = "AWS region"
  default = "ap-south-1"
}

# Setup our aws provider
provider "aws" {
  access_key  = "${var.aws_access_key_id}"
  secret_key  = "${var.aws_secret_access_key}"
  region      = "${var.region}"
}


resource "aws_ecr_repository" "sushil" {
  name = "docker-ecs"
}
