# terraform-aws-vpc-ec2
# Terraform AWS Infrastructure Deployment

Déploiement d'une infrastructure AWS comprenant un VPC, sous-réseaux publics/privés, NAT Gateway et instance EC2 avec serveur web.

## Fonctionnalités

- Création d'un VPC avec CIDR personnalisable
- Sous-réseaux public et privé dans différentes zones de disponibilité
- Internet Gateway et NAT Gateway
- Groupes de sécurité pour accès HTTP/SSH
- Instance EC2 avec Apache et page web automatique
- Structure Terraform modulaire et configurable

## Prérequis

- Compte AWS avec droits adéquats
- Terraform ≥ v1.0 installé
- AWS CLI configuré avec credentials
- Paire de clés SSH existante dans la région cible

## Structure du Projet

terraform-aws-vpc-ec2/
- ├── providers.tf # Configuration des providers
- ├── variables.tf # Variables globales
- ├── vpc.tf # Ressources réseau (VPC, subnets, NAT, etc.)
- ├── ec2.tf # Configuration EC2
- ├── security_groups.tf # Règles de sécurité
- ├── outputs.tf # Sorties Terraform
- └── user-data.sh # Script de bootstrap pour l'instance


## Utilisation

1. Cloner le dépôt :
```bash
git clone (https://github.com/lahda/terraform-aws-vpc-ec2.git)

cd terraform-aws-vpc-ec2

2. Initialiser Terraform :
terraform init

3. Vérifier le plan d'exécution :
terraform plan

4. Déployer l'infrastructure :
terraform apply -auto-approve

5. Accéder à l'application web :
http://<IP_PUBLIQUE_EC2>

6. Détruire l'infrastructure :
terraform destroy -auto-approve

Configuration
Modifier les variables dans variables.tf pour personnaliser :

variable "aws_region" {
  default = "eu-west-3" # Région AWS
}

variable "vpc_cidr" {
  default = "10.0.0.0/16" # CIDR du VPC
}

variable "instance_type" {
  default = "t2.micro" # Type d'instance EC2
}

Sécurité

La clé SSH spécifiée dans variables.tf doit exister dans AWS

Le groupe de sécurité permet :

SSH (port 22) depuis n'importe quelle IP (à restreindre en production)

HTTP (port 80) depuis tout le monde

Toutes les connexions sortantes

Auteurs
Lahda Biassou alphonsine - @lahda

Note : Adapter les CIDR et paramètres régionaux selon vos besoins. Vérifier les coûts AWS avant déploiement.
