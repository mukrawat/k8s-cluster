module "s3" {
  source = "./s3"
  # Vpc_name is basically your name or surname to keep resources unique in aws.
  vpc_name = "mukesh"
}

module "vpc" {
  source = "./vpc"
  # pub_zone_name is basically your cluster name or the vpc tag name.
  pub_zone_name = "mukesh.k8s"
  vpc_name      = "mukesh"
}

output "s3_bucket_name" {
  value = "${module.s3.s3_bucket_id}"
}

output "controller_instance_id" {
  value = "${module.vpc.controller_instance_id}"
}

output "controller_public_ip" {
  value = "${module.vpc.controller_public_ip}"
}

output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "cluster_name" {
  value = "${module.vpc.cluster_name}"
}
