resource "google_compute_health_check" "hc" {
  name = "web-hc"
 
  http_health_check {
    port = 80
    request_path = "/"
  }
 
  check_interval_sec  = 5
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 2
}
