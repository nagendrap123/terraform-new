resource "aws_instance" "db" {
    ami = var.ami-id
    instance_type = "t2.micro"
  
}