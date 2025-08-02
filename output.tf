output "instance_external_ip" {
  value       = "http://${google_compute_instance.iowahq-vm.network_interface[0].access_config[0].nat_ip}"
  description = "The external IP address of the GCE instance."
}

output "instance_external_ips" {
  value = {
    vm1 = "http://${google_compute_instance.iowahq-vm.network_interface[0].access_config[0].nat_ip}"
    vm2 = "http://${google_compute_instance.iowahq-vm.network_interface[0].access_config[0].nat_ip}"
  }
  description = "External IPs of both VMs"
}
