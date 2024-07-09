#variable "region" {
 # description = "AWS region"
  #type        = string
  #default     = "us-east-1"
#}
# Just to commit again
#variable "clusterName" {
  #description = "Name of the EKS cluster"
  #type        = string
  #default     = "gitopsactions"
#} #

##
##

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "clusterName" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "gitopsactions"
}

provider "aws" {
  region = var.region
}

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = var.clusterName
}
