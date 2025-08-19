variable "regions" {
  description = "GCP Regions"
  type = object({
    syd = string
    mel = string
  })
  default = {
    syd = "australia-southeast1"
    mel = "australia-southeast2"
  }
}
variable "cr_bgp_configuration" {
  description = "GCP Cloud Router BGP Configuration for each region"
  type = object({
    syd = object({
      advertise_mode       = string
      advertised_groups    = optional(list(string))
      advertised_ip_ranges = list(map(string))
    })
    mel = object({
      advertise_mode       = string
      advertised_groups    = optional(list(string))
      advertised_ip_ranges = list(map(string))
    })
  })
}
