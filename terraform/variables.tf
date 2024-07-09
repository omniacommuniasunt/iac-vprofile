variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
# Just to commit again
variable "clusterName" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "gitopsactions"
} 

##
##
##