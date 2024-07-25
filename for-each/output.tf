output "ami_id" {
    value = data.aws_ami.ami-id.id
  
}

output "instance_type" {
 value = aws_instance.instance
  
}