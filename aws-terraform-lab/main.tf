terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "lab_vm" {
  ami           = "ami-0d7405d05f836d0d4"
  instance_type = "t3.micro"

  key_name = "cloud-lab-key"
  

  vpc_security_group_ids = [aws_security_group.ssh_access.id]

  tags = {
    Name = "Cloud-Lab-002-EC2"
  }
}

resource "aws_security_group" "ssh_access" {
  name        = "ssh-and-rdp-access"
  description = "Allow SSH and RDP access"

  lifecycle {
    create_before_destroy = true
  }

  # SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # RDP (GUI access)
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}