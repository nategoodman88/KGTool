resource "aws_s3_bucket" "terraform_state" {
  bucket = var.aws_s3_terraform_state_bucket

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket" "kandgtoolco_com" {
  bucket = "kandgtoolco.com"
}

resource "aws_cloudfront_distribution" "kandgtoolco_website_distribution" {
  enabled             = true
  aliases             = ["kandgtoolco.com"]
  is_ipv6_enabled     = true
  default_root_object = "index.html"

  origin {
    domain_name              = "${aws_s3_bucket.kandgtoolco_com.bucket}.s3.us-east-2.amazonaws.com"
    origin_id                = "kandgtoolco.com.s3.us-east-2.amazonaws.com"
    origin_access_control_id = "E112LG6G4E31A4"
  }

  default_cache_behavior {
    target_origin_id       = "kandgtoolco.com.s3.us-east-2.amazonaws.com"
    viewer_protocol_policy = "redirect-to-https"
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"

    allowed_methods = ["GET", "HEAD"]
    cached_methods  = ["GET", "HEAD"]
    compress        = true
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
    acm_certificate_arn      = "arn:aws:acm:us-east-1:730335427928:certificate/52b7c981-7359-4f36-8dd4-b1fe8d00ad0c"
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
}

resource "aws_route53_zone" "kandgtoolco_com" {
  name = "kandgtoolco.com"
}

resource "aws_route53_record" "kandgtoolco_com_a" {
  zone_id = aws_route53_zone.kandgtoolco_com.zone_id
  name    = "kandgtoolco.com"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.kandgtoolco_website_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.kandgtoolco_website_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "kandgtoolco_com_txt" {
  zone_id = aws_route53_zone.kandgtoolco_com.zone_id
  name    = "kandgtoolco.com"
  type    = "TXT"
  ttl     = 300
  records = ["google-site-verification=9stxylGAcaKkUWcaU5EMlIHBArhw3HM_jJ7XfGDrUeI"]
}

resource "aws_route53_record" "acm_validation" {
  zone_id = aws_route53_zone.kandgtoolco_com.zone_id
  name    = "_fca1f60561b8cec58ec2baf028da3b75.kandgtoolco.com"
  type    = "CNAME"
  ttl     = 300
  records = ["_c4bec028efafae4c659a9293acfcb1ab.sdgjtdhdhz.acm-validations.aws."]
}
