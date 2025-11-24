resource "google_compute_url_map" "map" {
  name = "web-map"
  default_service = google_compute_backend_service.backend.self_link
}
 
resource "google_compute_target_http_proxy" "proxy" {
  name    = "web-proxy"
  url_map = google_compute_url_map.map.self_link
}
 
resource "google_compute_global_forwarding_rule" "fw_rule" {
  name       = "web-fw-rule"
  target     = google_compute_target_http_proxy.proxy.self_link
  port_range = "80"
  ip_protocol = "TCP"
  load_balancing_scheme = "EXTERNAL"
}
