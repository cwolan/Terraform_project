# output "public_ip" {
#   value = aws_instance.web.public_ip
  
# }

# output "private_dns" {
#   value = aws_instance.web.private_dns

# }

# output "arn" {
#   value = aws_instance.web.arn

# }

variable "ami" {
    description = "ami for webserver instance"
    type = string
    default = "ami-0dfcb1ef8550277af"
  
}
variable "instance_type" {
    description = "instance_type for webserver instance"
    type = list
    default = ["t2.miro","t2.nano","t3.micro"]
  
}

variable "tags" {
    description = "tag for webserver"
    type = map
    default ={ 
        Name = "helloword"
        Project = "terraform_project"
        Environment = "prod"
    } 
} 

variable "associate_public_ip_address" {
    description = "using a public ip address for webserver"
    type = bool
    default = true
  


  #variable "ami" {
  #description = "variable for my web instance server"
  #type        = string
  #default     = "ami-0dfcb1ef8550277af"
  #sensitive = false

}

# variable "instance_type" {
#   description = "variable for my web instance server"
#   type        = list
#   #alias default     = ["t2.medium", "t2.micro", "t3.nano"]
#   sensitive   = false
#}
