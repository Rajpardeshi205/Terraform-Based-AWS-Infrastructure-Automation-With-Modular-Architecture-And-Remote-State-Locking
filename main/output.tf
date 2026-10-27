# VPC Outputs

output "vpc_id" {
  description = "ID Of The Created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID Of The Public Subnet"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "ID Of The Private Subnet"
  value       = module.vpc.private_subnet_id
}

output "nat_gateway_id" {
  description = "ID Of The NAT Gateway"
  value       = module.vpc.nat_gateway_id
}

# Public EC2 Outputs

output "public_instance_id" {
  description = "ID Of The Public EC2 Instance"
  value       = module.ec2_public.instance_id
}

output "public_instance_ip" {
  description = "Public IPv4 Address Of The Public EC2 Instance"
  value       = module.ec2_public.public_ip
}

output "public_security_group_id" {
  description = "Security Group ID Of The Public EC2 Instance"
  value       = module.ec2_public.security_group_id
}

output "public_key_pair_name" {
  description = "Key Pair Name Used By The Public EC2 Instance"
  value       = module.ec2_public.key_pair_name
}

# Private EC2 Outputs

output "private_instance_id" {
  description = "ID Of The Private EC2 Instance"
  value       = module.ec2_private.instance_id
}

output "private_instance_private_ip" {
  description = "Private IPv4 Address Of The Private EC2 Instance"
  value       = module.ec2_private.private_ip
}

output "private_security_group_id" {
  description = "Security Group ID Of The Private EC2 Instance"
  value       = module.ec2_private.security_group_id
}

output "private_key_pair_name" {
  description = "Key Pair Name Used By The Private EC2 Instance"
  value       = module.ec2_private.key_pair_name
}

# Application S3 Outputs

output "app_bucket_name" {
  description = "Name Of The Application S3 Bucket"
  value       = module.s3.bucket_name
}

output "app_bucket_arn" {
  description = "ARN Of The Application S3 Bucket"
  value       = module.s3.bucket_arn
}
