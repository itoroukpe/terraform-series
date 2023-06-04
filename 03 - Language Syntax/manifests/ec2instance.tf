# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
