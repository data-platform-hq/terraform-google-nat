terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      # version = "4.24.0"
      version = ">= 4.69.1"
    }
  }
}