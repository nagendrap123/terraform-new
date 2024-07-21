#ec2 instance variables
variable "ami-id" {
    default = "ami-041e2ea9402c46c32"
    description = "RHEL-ami-id"
  
}
variable "common_tags" {
    default = {
        project = "expense"
        environment = "dev"
        terraform = "True"
    }
}

variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
  
}
#security group variables
variable "ssh_port" {
    default = "22"
  
}
variable "ssh_protocol" {
    default = "tcp"
  
}
#route 53 variables
variable "zone_id" {
    default = "Z0193540Q6U1VWFRHQ6D"
  
}

variable "domain_name" {
    default = "nagdevops.online"
  
}