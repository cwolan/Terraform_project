# resource "aws_security_group" "http_access" {
#  name        = "http_access"
#  description = "Allow HTTP inbound traffic"

#  ingress {
#    description = "HTTP Access"
#    from_port   = 80
#    to_port     = 80
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }

#  ingress {
#    description = "SSH Access"
#    from_port   = 22
#    to_port     = 22
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }

#  egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["0.0.0.0/0"]
#  }

#  tags = {
#    Name = "http_access"
#  }
# }

# resource "aws_instance" "web" {
#   ami           =  "ami-0b029b1931b347543"
#   instance_type = "t2.micro"
#   vpc_security_group_ids = [aws_security_group.http_access.id]
#   key_name = "keypair1"

# provisioner "file" {
#     source = "./provider.tf"
#     destination = "/home/ec2-user/provider.tf" 
# }
# connection {
#   host = self.public_ip
#   type = "ssh"
#   user = "ec2-user"
#   private_key = file("./keypair1.pem")

# }


# }
