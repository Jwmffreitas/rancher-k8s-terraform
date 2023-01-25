variable "aws_region" {
  type        = string
  description = "AWS S3 (Terraform State - bucket) region"
  default     = "us-east-2"
}

variable "ami_id" {
  description = "AWS instance ami id"
  default     = "ami-00149760ce42c967b"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t3.medium"
}

variable "subnet_id" {
  description = "AWS subnet id"
  default     = "subnet-03d5bae59744adc53"
}

variable "vpc_id" {
  description = "AWS VCP id"
  default     = "vpc-005e83001d1b72e6e"
}

variable "key_name" {
  type        = string
  description = "DevOps ssh key name"
  default     = "devops-ninja"
}

variable "git_user" {
  type        = string
  description = "User to run 'git clone' on Instance"
}

variable "git_token" {
  type        = string
  description = "Token to run 'git clone' on Instance"
}

variable "git_repository" {
  type        = string
  description = "Name of the GitHub repository"
  default     = "Rancher-K8s-Terraform"
}