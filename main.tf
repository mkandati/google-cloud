provider "google" {
  project = "terraform-gcp-498813"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo" {
  name     = "mkandati-demo-bucket-123456"
  location = "US"
}