#For Iowa

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowa" {
  name    = "iowa-router"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "iowaapp01" {
  name    = "iowa-routerapp01"
  region  = "us-central1"
  network = google_compute_network.prod1.id
}

#for Tokyo

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "tokyo" {
  name    = "tokyo-router"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "tokyoapp01" {
  name    = "tokyo-routerapp01"
  region  = "us-central1"
  network = google_compute_network.prod1.id
}