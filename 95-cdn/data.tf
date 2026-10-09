data "aws_cloudfront_cache_policy" "cachingOptmized" {
  name = "Managed-CachingOptimized"
}

data "aws_cloudfront_cache_policy" "cachingdisabled" {
  name = "Managed-Cachingdisabled"
}

data "aws_ssm_parameter" "certificate_arn" {
  name = "/${var.project}/${var.environment}/certificate_arn"
}
