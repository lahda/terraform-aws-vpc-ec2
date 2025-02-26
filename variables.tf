variable "aws_region" {                         # Déclaration variable pour la région
  description = "Région AWS"                    # Documentation de la variable
  type        = string                          # Type de donnée
  default     = "us-east-1"                     # virginia valeur par defaut
}

variable "vpc_cidr" {
  description = "CIDR du VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR du sous-réseau public"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR du sous-réseau privé"
  type        = string
  default     = "10.0.2.0/24"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nom de la clé SSH"
  type        = string
  default     = "MyKeyPair"
}