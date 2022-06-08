variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Target region"
}

variable "vpc_name" {
  type        = string
  default     = "muk"
  description = "Customer/VPC name"
}

variable "namespace" {
  type        = string
  default     = "local"
  description = "Namespace for labels"
}
