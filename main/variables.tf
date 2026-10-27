variable "aws_region" {
  description = "AWS Region For The Infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project Name Used As A Resource Name Prefix"
  type        = string
  default     = "terraform-exam"
}

variable "vpc_cidr" {
  description = "VPC IPv4 CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public Subnet IPv4 CIDR Block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "Private Subnet IPv4 CIDR Block"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_availability_zone" {
  description = "Availability Zone For The Public Subnet"
  type        = string
  default     = "us-east-1a"
}

variable "private_availability_zone" {
  description = "Availability Zone For The Private Subnet"
  type        = string
  default     = "us-east-1b"
}

variable "ssh_trusted_cidr" {
  description = "Trusted Public IPv4 CIDR Allowed To Access SSH"
  type        = string

  validation {
    condition     = can(cidrhost(var.ssh_trusted_cidr, 0))
    error_message = "Provide A Valid IPv4 CIDR, Such As Your_Public_IP/32."
  }
}

variable "tags" {
  description = "Common Tags Applied To AWS Resources"
  type        = map(string)
  default = {
    Environment = "dev"

  }
}

variable "ami_id" {
  description = "AMI ID For EC2 Instances In The Selected Region"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name Of The EC2 SSH Key Pair Registered In AWS"
  type        = string
}

variable "app_bucket_name" {
  description = "Globally Unique Name For The Application S3 Bucket"
  type        = string
}

variable "state_bucket_name" {
  description = "Existing S3 Bucket Used For Terraform Remote State"
  type        = string
}

variable "lock_table_name" {
  description = "Existing DynamoDB Table Used For Terraform State Locking"
  type        = string
  default     = "dev-exam-table"
}
