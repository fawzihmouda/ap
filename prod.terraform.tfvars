cr_bgp_configuration = {
  syd = {
    advertise_mode    = "CUSTOM"
    advertised_groups = ["ALL_SUBNETS"]
    advertised_ip_ranges = [
      {
        range       = "35.199.192.0/19"
        description = "Google Private DNS"
      }
    ]
  }
  mel = {
    advertise_mode    = "CUSTOM"
    advertised_groups = ["ALL_SUBNETS"]
    advertised_ip_ranges = [
      {
        range       = "35.199.192.0/19"
        description = "Google Private DNS"
      }
    ]
  }
}
