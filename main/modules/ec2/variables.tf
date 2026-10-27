variable "env" {
  description = "Environment Name"
  type        = string
}

variable "ami" {
  description = "AMI ID For The EC2 Instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "VPC ID For The EC2 Security Group"
  type        = string
}


variable "subnet_id" {
  description = "Subnet ID Where The EC2 Instance Will Be Created"
  type        = string
}

variable "associate_public_ip" {
  description = "Whether To Associate A Public IP Address"
  type        = bool
  default     = false
}

variable "is_public" {
  description = "Whether This EC2 Instance Is Public"
  type        = bool
  default     = false
}
