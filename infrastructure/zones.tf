resource "cloudflare_record" "mc-fg" {
  zone_id = local.zone_id
  type    = "CNAME"

  name  = "froggrove.mc"
  value = local.dc_hostname
  ttl   = 1 # automatic

  proxied = false
}

resource "cloudflare_record" "mc-le" {
  zone_id = local.zone_id
  type    = "CNAME"

  name  = "le.mc"
  value = local.dc_hostname
  ttl   = 1 # automatic

  proxied = false
}
