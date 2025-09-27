provider "aws" {
  region = "ap-northeast-1"
  secret_key = "M2tsNtoqD56cQOSfiUtX/ayttxf6fnM4UYM+i69B"
  access_key = "AKIAICQCSBT4QS463W6M"
}

resource "aws_instance" "ansible-m" {
  ami = "ami-054400ced365b02a0"
  instance_type = "t2.micro"
  key_name = "tokyo-key"
  user_data = file("ansible.sh")
  tags = {
    Name = "ansible-m"
  }
}

resource "aws_instance" "jenkins-m" {
  ami = "ami-054400ced365b02a0"
  instance_type = "t2.micro"
  key_name = "tokyo-key"
  tags = {
    Name = "jenkins-m"
  }
}

resource "aws_instance" "agent" {
  ami = "ami-054400ced365b02a0"
  instance_type = "t2.micro"
  key_name = "tokyo-key"
  tags = {
    Name = "agent"
  }
}
