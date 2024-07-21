resource "google_compute_instance" "vm01" {
    name = "vm01"
    machine_type = "e2-micro"

    boot_disk {
      initialize_params {
        image = "ubuntu-os-cloud/ubuntu-2204-lts-arm64"
      }
    }

    network_interface {
      network = "default"
    }
}