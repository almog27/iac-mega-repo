resource "aws_cloudfront_distribution" "cloudfront" {
  origin {
    domain_name = "test"
    origin_id   = "id-yyyyy"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/ABCDEFG1234567"
    }
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "Some comment"
  default_root_object = "index.html"

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["US", "CA", "GB", "DE"]
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  default_cache_behavior {
    viewer_protocol_policy = "allow-all"

    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "id-xxxxx"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
  }
}
