variable "aws_region" {
  type        = string
  description = "AWS S3 (Terraform State - bucket) region"
  default     = "us-east-2"
}

variable "git_user" {
  type        = string
  description = "User to run 'git clone' on Instance"
}

variable "git_token" {
  type        = string
  description = "Token to run 'git clone' on Instance"
}