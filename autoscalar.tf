resource "google_compute_autoscaler" "asc" {
  name   = "web-asc"
  zone   = var.zone
  target = google_compute_instance_group_manager.mig.id
 
  autoscaling_policy {
    min_replicas = 2
    max_replicas = 3
 
    cpu_utilization {
      target = 0.6
    }
  }
}
