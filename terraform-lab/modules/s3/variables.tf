variable "bucket_names" {
  description = "list of s3 buckets names for lab"
  type        = list(string)
}
variable "environment" {
  description = "Environment tag (dev/sage/prod)"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Extra tags to apply to all resources"
  type        = map(string)
  default     = {}
}