resource "google_compute_instance_group_manager" "mig" {
  name               = "web-mig"
  base_instance_name = "web"
  zone               = var.zone
 
  version {
    instance_template = google_compute_instance_template.tpl.self_link
  }
 
  target_size = var.instance_count
 
  auto_healing_policies {
    health_check = google_compute_health_check.hc.self_link
    initial_delay_sec = 60
  }
}

 
