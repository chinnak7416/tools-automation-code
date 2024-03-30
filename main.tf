module "tools" {
  for_each = var.tools
  source   = "./modules"

  tool_name    = each.key
  instance_type = each.value["instance_type"]

  zone_id       = var.zone_id
}
