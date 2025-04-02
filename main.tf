provider "aws" {
    region = "us-west-2"
}

module "rds" {
    source = "./modules/rds"
}

module "eks" {
    source = "./modules/eks"
    project = var.project
    desired_nodes = var.desired_nodes
    max_nodes = var.max_nodes
    min_nodes = var.min_nodes
    node_instance_type = var.instance_type
}

module "s3" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
}