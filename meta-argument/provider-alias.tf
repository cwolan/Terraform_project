# resource "aws_instance" "web" {
#   ami           = var.ami
#   instance_type = var.instance_type[2]
#   tags = {
#     "Name" = "test"
#   }
# }

# resource "aws_instance" "web1" {
#     provider = aws.west
#   ami           = var.ami
#   instance_type = var.instance_type[2]
#   tags = {
#     "Name" = "test"
#   }

# }