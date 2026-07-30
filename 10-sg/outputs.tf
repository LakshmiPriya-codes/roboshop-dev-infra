/*output "mongodb_sg_id" {
    count = lenght(var.sg_name)
    value = module.sg[count.index].sg_id
}*/

output "generated_sg_names" {
  value = [
    for sg in var.sg_name :
    "${var.project}-${var.environment}-${replace(sg, "_", "-")}"
  ]
}