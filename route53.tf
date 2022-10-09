data "aws_route53_zone" "myzone" {
  name = "gkranasinghe.com"
}

resource "aws_route53_record" "www-a" {
  zone_id = "${data.aws_route53_zone.myzone.zone_id}"
  name    = "www.gkranasinghe.com"
  type    = "A"

  alias {
    name                   = "${aws_cloudfront_distribution.cdn.domain_name}"
    zone_id                = "${aws_cloudfront_distribution.cdn.hosted_zone_id}"
    evaluate_target_health = false
  }
}