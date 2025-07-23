import {
  to = aws_s3_bucket.kandgtoolco_com
  id = "kandgtoolco.com"
}

resource "aws_s3_bucket" "kandgtoolco_com" {
  bucket = "kandgtoolco.com"
}

import {
  to = aws_cloudfront_distribution.kandgtoolco_website_distribution
  id = "EAKSK42IY2ZEC"
}
resource "aws_cloudfront_distribution" "kandgtoolco_website_distribution" {
  enabled = true

  aliases = ["kandgtoolco.com"]

  is_ipv6_enabled = true

  origin {
    connection_attempts      = 3
    connection_timeout       = 10
    domain_name              = "kandgtoolco.com.s3.us-east-2.amazonaws.com"
    origin_access_control_id = "E112LG6G4E31A4"
    origin_id                = "kandgtoolco.com.s3.us-east-2.amazonaws.com"
  }

  default_cache_behavior {
    target_origin_id       = "kandgtoolco.com.s3.us-east-2.amazonaws.com"
    viewer_protocol_policy = "redirect-to-https"

    cache_policy_id = "658327ea-f89d-4fab-a63d-7e88639e58f6"

    allowed_methods = ["GET", "HEAD"]
    cached_methods  = ["GET", "HEAD"]

    compress = true
  }

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 404
    response_code         = 200
    response_page_path    = "/index.html"
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:730335427928:certificate/52b7c981-7359-4f36-8dd4-b1fe8d00ad0c"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
}

import {
  to = aws_route53_zone.kandgtoolco_com
  id = "Z07755862J2IXIVADIXHM"
}

resource "aws_route53_zone" "kandgtoolco_com" {
  name    = "kandgtoolco.com"
  comment = "Managed by OpenTofu"
}

import {
  to = aws_route53_record.kandgtoolco_com_ns
  id = "Z07755862J2IXIVADIXHM_kandgtoolco.com_NS"
}

resource "aws_route53_record" "kandgtoolco_com_ns" {
  zone_id = "Z07755862J2IXIVADIXHM"
  name    = "kandgtoolco.com"
  type    = "NS"
  ttl     = 172800
  records = [
    "ns-1864.awsdns-41.co.uk.",
    "ns-190.awsdns-23.com.",
    "ns-1209.awsdns-23.org.",
    "ns-1018.awsdns-63.net."
  ]
}

import {
  to = aws_route53_record.kandgtoolco_com_a
  id = "Z07755862J2IXIVADIXHM_kandgtoolco.com_A"
}

resource "aws_route53_record" "kandgtoolco_com_a" {
  zone_id = "Z07755862J2IXIVADIXHM"
  name    = "kandgtoolco.com"
  type    = "A"
  alias {
    name                   = "d3av7detaysvk4.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}

import {
  to = aws_route53_record.kandgtoolco_com_soa
  id = "Z07755862J2IXIVADIXHM_kandgtoolco.com_SOA"
}

resource "aws_route53_record" "kandgtoolco_com_soa" {
  zone_id = "Z07755862J2IXIVADIXHM"
  name    = "kandgtoolco.com"
  type    = "SOA"
  ttl     = 900
  records = ["ns-1864.awsdns-41.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
}

import {
  to = aws_route53_record.kandgtoolco_com_txt
  id = "Z07755862J2IXIVADIXHM_kandgtoolco.com_TXT"
}

resource "aws_route53_record" "kandgtoolco_com_txt" {
  zone_id = "Z07755862J2IXIVADIXHM"
  name    = "kandgtoolco.com"
  type    = "TXT"
  ttl     = 300
  records = ["google-site-verification=9stxylGAcaKkUWcaU5EMlIHBArhw3HM_jJ7XfGDrUeI"]
}

import {
  to = aws_route53_record._fca1f60561b8cec58ec2baf028da3b75_kandgtoolco_com_cname
  id = "Z07755862J2IXIVADIXHM__fca1f60561b8cec58ec2baf028da3b75.kandgtoolco.com_CNAME"
}

resource "aws_route53_record" "_fca1f60561b8cec58ec2baf028da3b75_kandgtoolco_com_cname" {
  zone_id = "Z07755862J2IXIVADIXHM"
  name    = "_fca1f60561b8cec58ec2baf028da3b75.kandgtoolco.com"
  type    = "CNAME"
  ttl     = 300
  records = ["_c4bec028efafae4c659a9293acfcb1ab.sdgjtdhdhz.acm-validations.aws."]
}
