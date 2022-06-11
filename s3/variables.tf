variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Target region"
}

variable "vpc_name" {
  type        = string
  description = "Customer or Your name"
}

variable "namespace" {
  type        = string
  default     = "local"
  description = "Namespace for labels"
}
