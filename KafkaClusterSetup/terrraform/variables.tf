variable "gce_ssh_public_key_file" {
  description = "Path to the public SSH key you want to bake into the instance."
  default     = "~/.ssh/id_rsa.pub"
}

variable "gce_ssh_private_key_file" {
  description = "Path to the private SSH key, used to access the instance."
  default     = "~/.ssh/id_rsa"
}

variable "credentials_path" {
  description = "Path to the GCP account credentials."
  default     = "~/.ssh/marine-airfoil_secrets.json"
}

variable "project" {
  description = "Name of your GCP project."
  default     = "marine-airfoil-317702"
}

variable "region" {
  description = "Region."
  default     = "asia-south1"
}

variable "gce_ssh_user" {
  description = "remote user"
  default     = "kafkaaccess"
}

