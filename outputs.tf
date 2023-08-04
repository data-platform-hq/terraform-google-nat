output "router_id" {
  value       = { for k, r in google_compute_router.cloud_router : k => r.id }
  description = "Cloud Router IDs"
}

output "nat_id" {
  value       = { for k, n in google_compute_router_nat.cloud_nat : k => n.id }
  description = "Cloud NAT IDs"
}
