provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}

resource = "google_storage_bucket" "my-test-bucket" {
    name        = "demo-bucket-1357"
    localtion   = "us-central1"
    project     = "terraform-gcp-498813"
    force_destroy   = true
    policy_access_prevention    = "enforced"   
}