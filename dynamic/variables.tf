variable "inbound_rules" {
    type = list 
    default = [
        {
            port = 22,
            cidir_blocks = ["0.0.0.0/0"]
            protocol = "tcp"
        },
         {
            port = 80,
            cidir_blocks = ["0.0.0.0/0"]
            protocol = "tcp"
        },
         {
            port = 8080,
            cidir_blocks = ["0.0.0.0/0"]
            protocol = "tcp"
        },
         {
            port = 3306,
            cidir_blocks = ["0.0.0.0/0"]
            protocol = "tcp"
        },
    ]
  
}