provider "google" {
  project = "terraform-gcp-498813"
  region  = "us-central1"
}

resource "google_storage_bucket" "bucket" {
  name     = "mkandati-terraform-demo-12345"
  location = "US"

  force_destroy = true
}