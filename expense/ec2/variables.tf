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
variable "ssh_port" {
    default = "22"
  
}
variable "ssh_protocol" {
    default = "tcp"
  
}