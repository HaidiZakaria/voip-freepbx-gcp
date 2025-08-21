variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  default     = "us-central1"
}

variable "zone" {
  type        = string
  default     = "us-central1-c"
}

variable "vm_name" {
  type        = string
  default     = "voip-lab-vm"
}
