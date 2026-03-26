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
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t3.micro"
  tags = {
    ambiente = "dev"
    Name = var.instance_name
  }
  vpc_security_group_ids = [aws_security_group.bia_dev_tf.id]
  root_block_device {
    volume_size = 8 
    volume_type = "gp3"
  }
  
}