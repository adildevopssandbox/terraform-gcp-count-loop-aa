# project ----
variable "project_id" {
  description = "The ID of the Google Cloud project"
  type        = string
}

variable "region" {
  description = "the region your provisioning resources"
  type        = string
}

# aws region
variable "aws_region" {
  description = "region to provision resources for aws"
  type = string
  default = "us-east-1"
}

# bucket ----
variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket"
  type        = list(string)
}

variable "bucket_location" {
  description = "The location for the Google Cloud Storage bucket"
  type        = string
}

variable "force_destroy" {
  description = "Whether to force destroy the bucket"
  type        = bool
}

variable "uniform_bucket_level_access" {
  type    = bool
  default = true
}

