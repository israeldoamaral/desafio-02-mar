terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "bia-dev" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    ambiente = var.environment
    Name     = var.instance_name
  }
  vpc_security_group_ids = [aws_security_group.bia_dev_tf.id]
  root_block_device {
    volume_size = var.volume_size
    volume_type = "gp3"
  }

}