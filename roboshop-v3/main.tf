module "components" {
  for_each = var.components

  source            = "./module"                     #style convention
  zone_id           = var.zone_id
  security_groups   = var.security_groups
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
}