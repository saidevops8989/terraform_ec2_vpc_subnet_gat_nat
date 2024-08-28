variable "region" {
  default = "us-east-1"
}

variable "environment" {
  description = "Deployment Environment"
  default = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Public Subnet"
  default     = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Private Subnet"
  default     = ["10.0.10.0/24"]
}
variable "availability_zones" {
  type       = list(any)
  description = "availabity zone"
  default     =  ["us-east-1a","us-east-1b"]
}
variable "ami_id" {
  description = "The AMI ID for the EC2 instance."
  type        = string
  default     = "ami-0e86e20dae9224db8"
}
variable "instance_type" {
  description = "The type of EC2 instance to create."
  type        = string
  default     = "t2.micro"
}
variable "key_name" {
  description = "The key pair name to use for the instance to allow SSH access."
  type        = string
  default     = "ubuntukey"
}
