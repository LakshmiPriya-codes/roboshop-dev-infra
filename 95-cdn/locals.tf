locals {
    cachingOptmized = data.aws_cloudfront_cache_policy.cachingOptmized.id
    cachingdisabled = data.aws_cloudfront_cache_policy.cachingdisabled.id
    common_tags = {
        Project = "${var.project}"
        Environment = "${var.environment}"
        Terraform = "false"
    }
     certificate_arn = data.aws_ssm_parameter.certificate_arn.value

}