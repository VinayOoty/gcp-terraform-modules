output "vpc_firewall_rule_name" {
  value       = google_compute_firewall.fw_rules.name
  description = "Name of the VPC Firewall Rule: "
}

output "allowed_protocols" {
  value = google_compute_firewall.fw_rules.allow[*].protocol
}

output "allowed_ports" {
  value = google_compute_firewall.fw_rules.allow[*].ports
}

output "fw_priority" {
  value = google_compute_firewall.fw_rules.priority
}
