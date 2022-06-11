output "controller_instance_id" {
  value = aws_instance.controller.id
}
 
output "controller_public_ip" {
  value = aws_instance.controller.public_ip
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "cluster_name" {
  value = var.cluster_name
}
