terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 7.11.0"
    }
  }
  required_version = ">= 1.1.0"
}
 
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}
