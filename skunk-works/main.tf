provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "atlas" {
    name = "neil-test/skunk-works"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "${var.aws_instance_type}"
  count         = 1
  tags = "${var.aws_tags}"
}
