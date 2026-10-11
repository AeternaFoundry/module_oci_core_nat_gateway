variable "core_nat_gateways" {
  description = <<EOT
Map of core_nat_gateways, attributes below
Required:
    - compartment_id
    - vcn_id
Optional:
    - block_traffic
    - defined_tags
    - display_name
    - freeform_tags
    - public_ip_id
    - route_table_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    vcn_id         = string
    block_traffic  = optional(bool)
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    public_ip_id   = optional(string)
    route_table_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

