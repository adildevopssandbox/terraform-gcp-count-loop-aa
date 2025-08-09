# project ----
variable "project_id" {
  description = "The ID of the Google Cloud project"
  type        = string
}
# gcp region --------
variable "region" {
  description = "the region your provisioning resources"
  type        = string
}

variable "zone" {
  description = "availability zone"
  type = string
}

# aws region ----------
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
  description = "true = All object ACLs (Access Control Lists) are turned off."
  type    = bool
}

# for loop each

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "vm_configs" {
  type = map(object({
    machine_type = string
    image        = string
    disk_size    = number
  }))
}