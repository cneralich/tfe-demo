provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "${var.aws_instance_type}"
  count         = 1

  tags = "${var.aws_tags}"
}
