provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami = "ami-023a7615a07affbe5"
  instance_type = "t2.micro"
  key_name = "isucon-ec2"
  tags = {
    Role = "web1"
  }
}
