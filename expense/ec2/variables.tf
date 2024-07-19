variable "ami-id" {
    default = "ami-041e2ea9402c46c32"
    description = "RHEL-ami-id"
  
}
variable "common_tags" {
    default = {
        project = "expense"
        environment = "db"
        terraform = "True"
    }
}
