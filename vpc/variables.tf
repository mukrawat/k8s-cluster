variable "cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
}

variable "avail_zone" {
  type        = string
  default     = "us-east-1a"
}

variable "global_ip" {
  type        = string
  default     = "0.0.0.0/0"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Target region"
}

variable "vpc_name" {
  type        = string
  default     = "k8s"
  description = "Customer name"
}

variable "namespace" {
  type        = string
  default     = "local"
  description = "Namespace"
}

variable "stage" {
  description = "Stage"
  default     = "sandbox"
  type        = string
}

variable controller_instance_type {
  type        = string
  default     = "t2.micro"
  description = "Type of EC2 instance"
}


variable ami_name {
  type = map
  default = {
    "18.04" = "ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20210128"
    "20.04" = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20211118"
  }
  description = "AMI names mapped to different ubuntu OS versions"
}

variable ubuntu_os_version {
  type = string
  default = "18.04"
  description = "ubuntu version"
}

variable  key_name {
  type        = string
  default     = "k8s_key" 
  description = "key to connect to controller sitting in aws"
}

variable "pub_zone_name" {
  type        = string
  description = "Pass the cluster name here. Same would be considered as vpc name."
}
