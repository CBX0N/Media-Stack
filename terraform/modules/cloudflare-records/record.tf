resource "cloudflare_record" "dns-records" {
  for_each = var.dns-records
  zone_id  = var.cloudflare_zone_id
  name     = each.value.name
  type     = each.value.type
  value    = each.value.value
  ttl      = each.value.ttl
}