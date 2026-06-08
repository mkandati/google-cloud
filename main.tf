provider "google" {
  project = "terraform-gcp-498813"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo" {
  name     = "mkandati-demo-bucket-123456"
  location = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}