variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
  
}
  

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        environment = "Dev"
        terraform = "true"

    }
  
}

variable "domain_name" {
    default = "nagdevops.online"
  
}


 variable "zone_id" {
     default = "Z0193540Q6U1VWFRHQ6D"
  
 }   