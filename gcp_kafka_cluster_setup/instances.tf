resource "google_compute_instance" "kafka" {
    name = "kafka-zk"
    machine_type = "f1-micro"

    tags = ["buildserver", "http-server", "jenkins", "central", "terraformer"]

    zone = "asia-south1-a"

     boot_disk {
    initialize_params {
      image = "ubuntu-1404-trusty-v20180222a"
    } 
  }

    network_interface {
        network = "default"
        access_config {}
    }


    provisioner "file" {
        source = "./installations.sh"
        destination = "installations.sh"
        connection {
            host= "kafka-zk"
            type = "ssh"
            user  = "${var.gce_ssh_user}"
            private_key = "${file(var.gce_ssh_private_key_file)}"
            agent  = false
            timeout  = "100s"

                  }
          }


    provisioner "remote-exec" {
        inline = [
          "chmod +x ~/installations.sh",
          "cd ~",
          "./installations.sh"
        ]
        connection {
            host= "localhost"
            type = "ssh"
            user = "${var.gce_ssh_user}"
            private_key = "${file(var.gce_ssh_private_key_file)}"
            agent = false
            timeout = "90s"
                   }

            }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }
}
