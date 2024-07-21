resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.ami-id
    instance_type = var.instance_names[count.index] == "db" ? "t3.micro" : "t3.small"
    tags = merge(
       var.common_tags,
       {
        Name = var.instance_names[count.index]
        Module = var.instance_names[count.index]
       }
       )
  
}
resource "aws_security_group" "egress" {
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh"
  ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.ssh_protocol
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

