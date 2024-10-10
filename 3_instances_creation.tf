provider "google" {
  project = "ravi622"
  region  = "us-central1"  # Set your desired region
}

variable "instance_names" {
  default = ["ravi_test-instance-1", "ravi_test-instance-2", "ravi_test-instance-3"]
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "image" {
  default = "debian-cloud/debian-10"
}

resource "google_compute_instance" "example" {
  count = length(var.instance_names)

  name         = var.instance_names[count.index]
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
