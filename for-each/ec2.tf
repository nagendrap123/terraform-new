resource "aws_instance" "instance" {
    ami = data.aws_ami.ami-id.id
    for_each = var.instance_names #each.key and each.value 
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            module = each.key 
        }
    )
  
}