provider "google" {
  project = "persuasive-byte-464119-k7"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

resource "google_compute_network" "voip_network" {
  name = "voip-network"
}

resource "google_compute_subnetwork" "voip_subnet" {
  name          = "voip-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "europe-west1"
  network       = google_compute_network.voip_network.id
}

resource "google_compute_firewall" "allow_voip_traffic" {
  name    = "allow-voip-traffic"
  network = google_compute_network.voip_network.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "5060", "5061", "10000-20000"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "freepbx_vm" {
  name         = "freepbx-vm"
  machine_type = "e2-medium"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 20
    }
  }

  network_interface {
    network    = google_compute_network.voip_network.id
    subnetwork = google_compute_subnetwork.voip_subnet.id

    access_config {} # assign external IP
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update -y
    apt-get install -y apache2
    # You can add FreePBX installation here if needed
  EOT

  tags = ["freepbx"]
}
