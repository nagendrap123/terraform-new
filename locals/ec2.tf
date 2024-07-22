resource "aws_instance" "locals" {
    ami = local.ami-id
    #instance_type = "t3.micro"
    #instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    instance_type = local.instance_type
    tags = local.tags
    
}