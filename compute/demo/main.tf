resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type[1]
  user_data     = <<-EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo bash -c 'echo your very first web server > /var/www/html/index.html'
EOF

}
