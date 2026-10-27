module "vpc" {
  source = "./modules/vpc"

  project_name              = var.project_name
  vpc_cidr                  = var.vpc_cidr
  public_subnet_cidr        = var.public_subnet_cidr
  private_subnet_cidr       = var.private_subnet_cidr
  public_availability_zone  = var.public_availability_zone
  private_availability_zone = var.private_availability_zone
  ssh_trusted_cidr          = var.ssh_trusted_cidr
  tags                      = var.tags
}

module "ec2_public" {
  source = "./modules/ec2"

  env                 = "dev"
  ami                 = var.ami_id
  instance_type       = var.instance_type
  vpc_id              = module.vpc.vpc_id
  subnet_id           = module.vpc.public_subnet_id
  associate_public_ip = true
  is_public           = true
}

module "ec2_private" {
  source = "./modules/ec2"

  env                 = "prod"
  ami                 = var.ami_id
  instance_type       = var.instance_type
  vpc_id              = module.vpc.vpc_id
  subnet_id           = module.vpc.private_subnet_id
  associate_public_ip = false
  is_public           = false
}

module "s3" {
  source = "./modules/s3"

  env         = "dev"
  bucket_name = var.app_bucket_name
}
