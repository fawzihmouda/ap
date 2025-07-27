import {
  for_each = var.interconnect_attachment
  id       = "projects/${var.project_id}/regions/${var.region}/interconnectAttachments/${each.key}"
  to       = module.interconnect[each.key].google_compute_interconnect_attachment.default
}

module "interconnect" {
  for_each      = var.interconnect_attachment
  source        = "./net-vlan-attachment"
  network       = var.vpc_id
  project_id    = var.project_id
  region        = var.region
  name          = each.key
  description   = each.value["description"]
  peer_asn      = each.value["peer_asn"]
  admin_enabled = each.value["enabled"]
  mtu           = "1500"
  router_config = {
    create = false
    name   = each.value["cloud_router_name"]
  }
  partner_interconnect_config = {
    edge_availability_domain = each.value["edge_availability_domain"]
  }
}
