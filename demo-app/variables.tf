variable "aws_instance_type" {
    default = "t2.2xlarge"
}

variable "aws_region" {
    default = "us-east-1"
}

variable "aws_tags" {
    default = {
        environment = "dev"
        name = "neil"
    }
}

variable "tfe_access_token" {
    type = "string"
}