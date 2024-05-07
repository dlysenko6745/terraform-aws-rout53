resource "aws_rout53_zone" "example" {
   name = "test.example.com"
}

resource "aws_route53_record" "www" {
  allow_overwrite = true
  zone_id         = aws_route53_zone.primary.zone_id
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}

   
