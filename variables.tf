variable "region" {
  default = "australia-southeast1"
}

variable "project_id" {
}

variable "vpc_id" {

}
variable "interconnect_attachment" {
  type = map(object({
    description              = string
    peer_asn                 = string
    enabled                  = bool
    cloud_router_name        = string
    edge_availability_domain = string
  }))
}
