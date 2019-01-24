provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "atlas" {
    name = "neil-test/demo-app"
  }
}

data "terraform_remote_state" "skunk" {
  backend = "atlas"
  workspace = "skunk-works"

  config = {
    name = "neil-test/skunk-works"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "${var.aws_instance_type}"
  count         = 1

  tags = "${merge(var.aws_tags, map("skunk_works", data.terraform_remote_state.skunk.you_should_not_see_this))}"

}
