resource "aws_ssm_parameter" "sg_id" {
  count = length(var.sg_name)  
  name  = "/${var.project}/${var.environment}/mysql_root_password"    #/roboshop/dev/backend_alb-sg_id
  type  = "SecureString"
  value = var.mysql_root_password
  overwrite = true
}