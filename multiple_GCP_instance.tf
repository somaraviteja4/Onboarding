provider "google" {
  project = "ravi622"
  region  = "us-central1"  
}

variable "instance_count" {
  default = 5
}

resource "google_compute_instance" "example" {
  count        = var.instance_count
  name         = "example-instance-${count.index + 1}"
  machine_type = "n1-standard-1"  # Instance type

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # Image name
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
