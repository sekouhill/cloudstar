# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

# Direct SSH Access for Lizzo lovers
# For main VPC
resource "google_compute_firewall" "ssh" {
  name    = "${google_compute_network.main.name}-allow-lizzo-ssh"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}


resource "google_compute_firewall" "allow-http" {
  name    = "${google_compute_network.main.name}-allow-http"
  network = google_compute_network.main.name  

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Lizzo's ping FW rule
resource "google_compute_firewall" "ping" {
  name    = "${google_compute_network.main.name}-allow-ping"
  network = google_compute_network.main.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}


resource "google_compute_firewall" "icmp" {
  name    = "icmp"
  network = google_compute_network.main.name

  allow {
    protocol = "icmp"
  }

   source_ranges = ["0.0.0.0/0"]
}