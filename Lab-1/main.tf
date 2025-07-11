provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ubuntu" {
  ami           = "ami-020cba7c55df1f615"
  instance_type = "t3.micro"
  key_name      = "terraform"

  tags = {
    Name = "My-Ubuntu-Server"
    Owner = "icecream"
    Project = "Phoenix"
  }
}