output "load_balancer_ip" {
  value       = google_compute_global_forwarding_rule.fw_rule.ip_address
  description = "External IP of the HTTP Load Balancer"
}
