module "cloud_router_syd" {
  source      = "git::https://gitlab.cd.auspost.com.au/enterprise/gcp-cicd/gcp-infra/gcp-terraform-modules/gcp-terraform-module-google-cloud-router.git?ref=v0.4.0"
  name        = "cr-${module.shared_vpc.network_name}-syd"
  description = "sydney cloud router"
  project     = local.vpc_project_id
  region      = var.regions.syd
  network     = module.shared_vpc.network_name
  bgp         = var.cr_bgp_configuration.syd
}

resource "google_compute_router_route_policy" "rp_import_syd" {
  name   = "deprioritise_secondary_syd"
  router = module.cloud_router_syd.name
  region = var.regions.syd
  type   = "ROUTE_POLICY_TYPE_IMPORT"
  terms {
    priority = 1
    match {
      expression = "communities.matchesEvery([])"
    }
    actions {
      expression = "med.add(50)"
    }
  }
}

module "cloud_router_mel" {
  source      = "git::https://gitlab.cd.auspost.com.au/enterprise/gcp-cicd/gcp-infra/gcp-terraform-modules/gcp-terraform-module-google-cloud-router.git?ref=v0.4.0"
  name        = "cr-${module.shared_vpc.network_name}-mel"
  description = "melbourne cloud router"
  project     = local.vpc_project_id
  region      = var.regions.mel
  network     = module.shared_vpc.network_name
  bgp         = var.cr_bgp_configuration.mel
}

resource "google_compute_router_route_policy" "rp_import_mel" {
  name   = "deprioritise_secondary_mel"
  router = module.cloud_router_mel.name
  region = var.regions.mel
  type   = "ROUTE_POLICY_TYPE_IMPORT"
  terms {
    priority = 1
    match {
      expression = "communities.matchesEvery([])"
    }
    actions {
      expression = "med.add(50)"
    }
  }
}
