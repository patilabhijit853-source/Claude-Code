module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  project_name        = var.project_name
}

module "security" {
  source       = "./modules/security"
  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
}

module "lb" {
  source       = "./modules/lb"
  vpc_id       = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnet_nets
  security_group_id = module.security.alb_sg_id
  project_name = var.project_name
}

module "compute" {
  source       = "./modules/compute"
  vpc_id       = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnet_nets
  security_group_id = module.security.ec2_sg_id
  target_group_arn = module.lb.target_group_arn
  instance_type    = var.instance_type
  project_name     = var.project_name
}
