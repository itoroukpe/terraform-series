provider "aws" {
  region = "us-east-1"  # Set your desired AWS region here
}

resource "aws_instance" "example" {
  count         = 5  # Create 5 instances
  ami           = "ami-0c94855ba95c71c99"  # Set your desired AMI ID here
  instance_type = "t2.micro"  # Set your desired instance type here

  tags = {
    Name = "example-instance-${count.index + 1}"
  }
}
