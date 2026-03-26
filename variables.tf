variable "instance_name" {
  description = "Nome da instância EC2"
  type        = string
  default     = "bia-dev-tf"
}

variable "environment" {
  description = "Ambiente de implantação"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro"
}

variable "ami" {
  description = "ID da AMI para a instância EC2"
  type        = string
  default     = "ami-02f3f602d23f1659d"
}

variable "volume_size" {
  description = "Tamanho do volume raiz em GB"
  type        = number
  default     = 8
}

variable "volume_type" {
  description = "Tipo do volume raiz"
  type        = string
  default     = "gp3"
}