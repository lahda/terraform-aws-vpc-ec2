terraform {
  required_providers {       
    aws = {                                 # decalartion du fournisseur 
      source  = "hashicorp/aws"             # Source officielle du provider
      version = "~> 5.0"                    # Version 5.x (derniere stable)
    }
  }
}

provider "aws" {                            # configuration du provider
  region = var.aws_region                   # Utilise la variable pour la region
}