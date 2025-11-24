resource "google_compute_backend_service" "backend" {
  name                  = "web-backend"
  protocol              = "HTTP"
  port_name             = "http"
  timeout_sec           = 10
  health_checks         = [google_compute_health_check.hc.self_link]
  load_balancing_scheme = "EXTERNAL"
 
  backend {
    group = google_compute_instance_group_manager.mig.instance_group
    balancing_mode = "UTILIZATION"
    max_utilization = 0.8
  }
}
