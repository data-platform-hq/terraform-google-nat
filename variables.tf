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
}
