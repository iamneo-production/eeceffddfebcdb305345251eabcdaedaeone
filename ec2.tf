terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~4.0"
        }
    }
}
provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAX3IN6TILTHJ4VQGR"
    secret_key = "Cx2zD4UF4IbeFGN1MNxUX5SeksEmQJ4YpqASSAwI"
}
resource "aws_instance" "example" {
    ami = ""
    instance_type = "t2.micro"
}
output "public_ip" {
    value = aws_instance.example.public_ip
}