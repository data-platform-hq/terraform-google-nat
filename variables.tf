variable "product_base_name" {
  description = "Cloud resources base name (used to create services)"
  type        = string
}

variable "env" {
  description = "Variable to mark the environment of the resource (used to create services)."
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "nat_confiuration" {
  description = "List of Cloud NAT configurations"
  type = list(object({
    nat_name                           = string
    router_name                        = string
    network                            = string
    source_subnetwork_ip_ranges_to_nat = string
    subnetwork = optional(object({
      name                     = string
      secondary_ip_range_names = optional(list(string))
    }))
    nat_ip_allocate_option = string
  }))
  #   validation {
  #     condition     = can(regex("^(ALL_SUBNETWORKS_ALL_IP_RANGES|ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES|LIST_OF_SUBNETWORKS)$", var.nat_confiuration[*].source_subnetwork_ip_ranges_to_nat)) && can(regex("^(MANUAL_ONLY|AUTO_ONLY)$", var.nat_confiuration[*].nat_ip_allocate_option))
  #     error_message = "Invalid values. source_subnetwork_ip_ranges_to_nat should be one of: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, or LIST_OF_SUBNETWORKS. nat_ip_allocate_option should be one of: MANUAL_ONLY or AUTO_ONLY."
  #   }
}
