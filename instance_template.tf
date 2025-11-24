resource "google_compute_instance_template" "tpl" {
  name_prefix  = "web-tpl-"
  machine_type = var.machine_type
 
  disk {
    boot       = true
    auto_delete = true
    source_image = "projects/debian-cloud/global/images/family/debian-11"
    disk_size_gb  = 20
    disk_type  = "pd-standard"
    }
  
 
  network_interface {
    network = "default"
    access_config {} # external IP for testing
  }
 
  metadata_startup_script = file("${path.module}/startup-script.sh")
 
  tags = ["http-server"]
}
