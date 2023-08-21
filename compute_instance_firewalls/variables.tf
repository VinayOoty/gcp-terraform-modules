variable "project_id" {
  type        = string
  description = "Project ID "
}

variable "firewall_rule_name" {
  type        = string
  description = "VPC Firewall rule name "
}

variable "vpc_network_name" {
  type        = string
  description = "VPC Network Name "
}

variable "source_ip_ranges" {
  type        = list(string)
  description = "List of source IP ranges "
}

variable "target_tags" {
  type        = list(string)
  description = "List of target tags "
}

variable "allowed_ports_protocols" {
  type = map(object({
    protocol = string
    ports    = list(string)
  }))
}
