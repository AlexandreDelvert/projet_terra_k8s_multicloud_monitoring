resource "aws_instance" "vm" {
  provider        = aws
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  vpc_security_group_ids = [aws_security_group.vm_sg.id]

  tags = {
    Name = var.vm_name
  }
}

resource "aws_security_group" "vm_sg" {
  name        = "${var.vm_name}-sg"
  description = "Security group for ${var.vm_name}"

  ingress {
    from_port   = var.os_type == "windows" ? 3389 : 22
    to_port     = var.os_type == "windows" ? 3389 : 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}
