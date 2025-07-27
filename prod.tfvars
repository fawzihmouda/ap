# PROD
project_id = "ap-vpc-prd-01-f33e"
vpc_id     = "vpc-prd-01-vpc-shared"
interconnect_attachment = {
  "vlan-vpc-np-01-vpc-shared-australia-southeast1-primary" = {
    description              = "Primary Link to DC2"
    peer_asn                 = 64600
    enabled                  = true
    cloud_router_name        = "cr-vpc-prd-01-vpc-shared-australia-southeast1-primary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_1"
  }

  "vlan-vpc-np-01-vpc-shared-australia-southeast1-secondary" = {
    description              = "Secondary Link to DC2"
    peer_asn                 = 64600
    enabled                  = true
    cloud_router_name        = "cr-vpc-prd-01-vpc-shared-australia-southeast1-primary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_2"
  }

  "vlan-vpc-prd-01-vpc-shared-australia-southeast1-primary-dc1" = {
    description              = "Primary Link to DC1"
    peer_asn                 = 64650
    enabled                  = true
    cloud_router_name        = "cr-vpc-prd-01-vpc-shared-australia-southeast1-secondary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_1"
  }

  "vlan-vpc-prd-01-vpc-shared-australia-southeast1-secondary-dc1" = {
    description              = "Secondary Link to DC1"
    peer_asn                 = 64650
    enabled                  = true
    cloud_router_name        = "cr-vpc-prd-01-vpc-shared-australia-southeast1-secondary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_2"
  }
}
