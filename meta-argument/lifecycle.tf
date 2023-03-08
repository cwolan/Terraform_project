# resource "aws_instance" "web" {
#   ami           = var.ami
#   instance_type = var.instance_type[2]
#   tags = {
#     "Name" = "test"
#   }

#   lifecycle {
# create_before_destroy = true
#   }
# }