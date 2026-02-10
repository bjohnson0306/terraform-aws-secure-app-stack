variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}


#variable "bucket_name" {
#  description = "Globally unique name for S3"
#  type        = string
#}


#variable "bucket_names" {
#  description = "A list of names for s3 buckets"
#  type        = list(string)
#  default     = {}
#}

variable "bucket_names" {
  type = list(string)
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "tags" {
  type    = map(string)
  default = {}
}