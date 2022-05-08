resource "google_compute_network" "project-network" {
  name                    = "project-network"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}
