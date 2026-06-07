# 1. The Verification Record
resource "google_dns_record_set" "firebase_txt" {
  name         = "${var.domain_name}."
  managed_zone = "datai-zone"
  type         = "TXT"
  ttl          = 300
  
  # This public token is the TXT
  rrdatas      = ["\"hosting-site=datai-core\""] 
}

# 2. The Traffic Routing (IP Addresses)
resource "google_dns_record_set" "firebase_a" {
  name         = "${var.domain_name}."
  managed_zone = "datai-zone"
  type         = "A"
  ttl          = 300
  
  # Public IPs
  rrdatas      = [
    "199.36.158.100"
  ]
}