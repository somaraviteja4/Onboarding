provider "google" {
  project = "ravi662"  # Project ID
  region  = "us-central1"  
}

resource "google_compute_instance" "ravi_test_instance" {  
  name         = "ravi-test-instance"  
  machine_type = "n1-standard-1"        # Instance type

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # Image name for Debian 10
    }
  }

  network_interface {
    network = "default"  # Default network
    access_config {
      // Assign an ephemeral external IP address
    }
  }
  
  // Optional: Add additional configurations as needed
  // metadata = {
  //   ssh-keys = "your-ssh-key"
  // }
}
