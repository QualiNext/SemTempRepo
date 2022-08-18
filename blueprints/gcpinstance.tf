resource "google_compute_instance" "web_private_2" {
  name = "vm2"
  machine_type = "f1-micro"
  hostname = "bob"
  tags = ["ssh","http"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}




provider "google" {
  project     = "alexs-project-239406"
  region      = "us-west1"

}

