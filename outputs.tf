output "instance_id" {
    value = aws_instance.bia-dev.id
    description = "ID da EC2"
}

output "instance_type" {
    value = aws_instance.bia-dev.instance_type
    description = "Tipo da EC2"
}

output "instance_public_ip" {
    value = aws_instance.bia-dev.public_ip
    description = "IP público da EC2"
}

output "instance_private_ip" {
    value = aws_instance.bia-dev.private_ip
    description = "IP privado da EC2"
}

output "security_groups" {
    value = aws_instance.bia-dev.vpc_security_group_ids
    description = "IDs dos grupos de segurança associados à EC2"
  
}