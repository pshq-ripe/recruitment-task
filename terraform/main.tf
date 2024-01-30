// Instance preparation for cool-software-dev project
resource "google_compute_instance" "this" {
  name         = format("whoami-instance-%s", var.environment)
  machine_type = var.instance_type
  zone         = var.region_zone

  boot_disk {
    initialize_params {
      image = var.instance_default_image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    ssh-keys = format("ubuntu:%s", var.ssh_public_key)
  }
}
