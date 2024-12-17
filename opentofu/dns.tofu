locals {
  non_proxied_types = ["TXT", "MX"]

  mx_records = {
    "mx.zoho.eu"  = "10"
    "mx2.zoho.eu" = "20"
    "mx3.zoho.eu" = "50"
  }

  dns_records = flatten(
    [
      for type, records in {
        A = [
          "185.199.108.153",
          "185.199.109.153",
          "185.199.110.153",
          "185.199.111.153",
        ],
        AAAA = [
          "2606:50c0:8000::153",
          "2606:50c0:8001::153",
          "2606:50c0:8002::153",
          "2606:50c0:8003::153",
        ],
        } : [
        for record in records : {
          type    = type
          content = record
          key     = "${type}-${index(records, record)}"
        }
        if length(record) <= 255
      ]
  ])
}

resource "cloudflare_record" "root" {
  for_each = { for record in local.dns_records : record.key => record }

  zone_id = data.cloudflare_zone.zone.id
  name    = var.domain
  type    = each.value.type
  ttl     = 1
  proxied = false
  #   proxied = !contains(local.non_proxied_types, each.value.type)
  content = each.value.content
}

resource "cloudflare_record" "email" {
  for_each = local.mx_records
  name     = var.domain
  type     = "MX"
  zone_id  = data.cloudflare_zone.zone.id
  content  = each.key
  priority = each.value
  proxied  = false
}

# revert a record to 173.254.30.93