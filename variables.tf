variable "aws_instance_type" {
    default = "t2.micro"
}

variable "aws_region" {
    default = "us-east-1"
}

variable "aws_tags" {
    default = {
        // environment = "demo"
    }
}