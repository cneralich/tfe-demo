provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  // instance_type = "t2.2xlarge"
  count         = 1

  tags = { 
    environment = "demo" 
  }
}
