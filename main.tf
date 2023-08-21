locals {
  router_configs = { for nat in var.nat_confiuration : nat.nat_name => {
    name    = "${var.product_base_name}-${var.env}-${nat.router_name}"
    network = nat.network
  } }

  nat_configs = { for nat in var.nat_confiuration : nat.nat_name => {
    name                               = "${var.product_base_name}-${var.env}-${nat.nat_name}"
    router                             = local.router_configs[nat.nat_name].name
    region                             = var.region
    source_subnetwork_ip_ranges_to_nat = nat.source_subnetwork_ip_ranges_to_nat
    nat_ip_allocate_option             = nat.nat_ip_allocate_option
  } }
}

resource "google_compute_router" "cloud_router" {
  for_each = local.router_configs
  name     = each.value.name
  region   = var.region

  network = each.value.network
}

resource "google_compute_router_nat" "cloud_nat" {
  for_each                           = local.nat_configs
  name                               = each.value.name
  router                             = google_compute_router.cloud_router[each.key].name
  region                             = each.value.region
  source_subnetwork_ip_ranges_to_nat = each.value.source_subnetwork_ip_ranges_to_nat
  nat_ip_allocate_option             = each.value.nat_ip_allocate_option
}
