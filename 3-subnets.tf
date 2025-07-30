resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.100.10.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "app01" {
  name                     = "app01"
  ip_cidr_range            = "10.100.9.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}
