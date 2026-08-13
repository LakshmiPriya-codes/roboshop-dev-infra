resource "aws_ssm_parameter" "certificated_arn" {
  name  = "/${var.project}/${var.environment}/certificated_arn"    #/roboshop/dev/backend_alb-sg_id
  type  = "String"
  value = aws_acm_certificate.roboshop.arn
  overwrite = true
}