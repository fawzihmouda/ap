# NON-PROD
project_id = "ap-vpc-np-01-8e83"
vpc_id     = "vpc-np-01-vpc-shared"
interconnect_attachment = {
  "vlan-vpc-np-01-vpc-shared-primary" = {
    description              = ""
    peer_asn                 = 64600
    enabled                  = true
    cloud_router_name        = "cr-vpc-np-01-vpc-shared-australia-southeast1-primary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_1"
  }
  "vlan-vpc-np-01-vpc-shared-secondary" = {
    description              = ""
    peer_asn                 = 64600
    enabled                  = true
    cloud_router_name        = "cr-vpc-np-01-vpc-shared-australia-southeast1-primary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_2"
  }
  "vlan-vpc-np-01-vpc-shared-primary-dc1" = {
    description              = ""
    peer_asn                 = 64650
    enabled                  = true
    cloud_router_name        = "cr-vpc-np-01-vpc-shared-australia-southeast1-secondary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_1"
  }
  "vlan-vpc-np-01-vpc-shared-secondary-dc1" = {
    description              = ""
    peer_asn                 = 64650
    enabled                  = true
    cloud_router_name        = "cr-vpc-np-01-vpc-shared-australia-southeast1-secondary"
    edge_availability_domain = "AVAILABILITY_DOMAIN_2"
  }

}
