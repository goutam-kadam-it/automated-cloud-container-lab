variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "me-central-1"
}

variable "ami_id" {
  description = "Ubuntu 22.04 LTS AMI ID"
  type        = string
  default     = "ami-0c7217cdde317cfec"
}
