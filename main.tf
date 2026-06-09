provider "google" {
  project = "terraform-gcp-498813"
  region  = "us-central1"
}

/*resource "google_storage_bucket" "demo" {
  name     = "mkandati-demo-bucket-123456"
  location = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}*/

resource "google_compute_instance" "default" {
    name    = "my-instance"
    machine_type    = "e2-micro"
    zone            = "us-central1-a"

    boot_disk {
        initialize_params {
            image   = "Ubuntu 26.04 LTS Minimal"
            labels  = {
                my_label    = "value"
            }
        }
    }

    network_interface {
        network     = default
    }
}