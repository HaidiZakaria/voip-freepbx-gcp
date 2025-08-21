output "freepbx_vm_ip" {
  description = "Public IP address of the FreePBX VM"
  value       = google_compute_instance.freepbx_vm.network_interface[0].access_config[0].nat_ip
}
