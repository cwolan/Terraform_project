 variable "ami" {
   description = "variable for webserver"
   type = string
   default = "ami-0735c191cf914754d"                #"ami-006dcf34c09e50022"
 }
 variable "instance_type" {
    description = "variable for webserver"
    type = list
    default = ["t2.medium","t2.micro","t3.nano"]

 }

#  variable "tag_name" {
#     default = "test"
   
 