locals {
  ami-id = "ami-041e2ea9402c46c32"
  tags = {
    Name  = "local"
}
instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
}
