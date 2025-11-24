resource "google_compute_firewall" "allow_http-2" {
  name    = "allow-http-tf"
  network = "default"
 
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
 
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}
