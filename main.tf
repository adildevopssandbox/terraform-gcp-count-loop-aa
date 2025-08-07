resource "google_storage_bucket" "bucket" {
  count         = length(var.bucket_name)
  name          = var.bucket_name[count.index]
  location      = var.bucket_location
  force_destroy = true

  versioning {
    enabled = true
  }
}

