# resource "aws_instance" "web" {
#     count = 3
#   ami           = var.ami
#   instance_type = var.instance_type[1]
#   tags = {
#     "Name" = "test_instance${count.index}"
#   }
    
  
# }
 
 
#  resource "aws_iam_user" "name" {
#     count = 4
#     name = var.use_names [count.index]
  
# }
#  variable "user_names" {
#     description = "IAM usernames"
#     type      = List (string)
#     default     = ["user1","user2","user3", "user4"]   
#  }

 
 variable "user_names" {
    description = "IAM usernames"
    type      = map
    default   = {
        teama ="user1"
        teamb ="user2"
        teamc ="user3"
        teamd ="user4"
        teame ="user5"
    }
 }

resource "aws_iam_user" "name" {
    for_each = var.user_names
    name     = each.value
  
}