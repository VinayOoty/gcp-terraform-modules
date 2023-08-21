resource "google_compute_firewall" "fw_rules" {
  name    = var.firewall_rule_name
  project = var.project_id
  network = var.vpc_network_name

  source_ranges = var.source_ip_ranges
  target_tags   = var.target_tags

  dynamic "allow" {
    for_each = var.allowed_ports_protocols
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }
}
