resource "oci_core_nat_gateway" "core_nat_gateways" {
  for_each = var.core_nat_gateways

  compartment_id = each.value.compartment_id
  vcn_id         = each.value.vcn_id
  block_traffic  = each.value.block_traffic
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  public_ip_id   = each.value.public_ip_id
  route_table_id = each.value.route_table_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

