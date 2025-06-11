# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "cloudstarbucket"
    prefix = "terraform/state"
    credentials = "class65-sekouhill-462620-edcf05a55384.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
