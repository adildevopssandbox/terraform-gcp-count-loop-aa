resource "google_storage_bucket" "bucket" {
  count         = length(var.bucket_name)
  name          = var.bucket_name[count.index]
  location      = var.bucket_location
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy = true

  versioning {
    enabled = true
  }
}

resource "google_compute_instance" "vms" {
  for_each = var.vm_configs

  name         = each.key
  machine_type = each.value.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }

  network_interface {
    network       = var.network
    subnetwork    = var.subnetwork
    access_config {}
  }

}