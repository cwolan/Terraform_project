# resource "aws_instance" "web" {
#   ami           = "ami-0b029b1931b347543"
#   instance_type = "t2.micro"
# #   key_name      = "n_virginia_keypair"

#   provisioner "local-exec" {
#     when    = create
#     command = "echo 'This is my private IP ${self.private_ip}'>> private_ip.txt && mkdir Test && mv private_ip.txt Test"
#   }

#   provisioner "local-exec" {
#     when    = destroy
#     command = "echo 'Destruction successful'>> destruction.txt"
#   }

# }