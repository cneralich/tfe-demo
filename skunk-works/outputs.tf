output "aws_instance_arn" {
    value = "${aws_instance.example.arn}"
}

output "you_should_not_see_this" {
    value = "AT_ALL"
}