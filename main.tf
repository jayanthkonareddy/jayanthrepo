provider "google" {
  project = "sample-deployemt"
  region  = "asia-south1"
  zone    = "asia-south1-c"
}

resource "google_compute_instance" "testvm_instance" {
  name         = "testsampleinstance1"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}

