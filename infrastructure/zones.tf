resource "cloudflare_record" "mc-sb3" {
  zone_id = local.zone_id
  type    = "CNAME"

  name    = "sb3.mc"
  value   = local.home_hostname
  ttl     = 1 # automatic

  proxied = false
}
