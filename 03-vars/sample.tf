variable "fruit_name" {
  default = "mango"
}
output "out" {
  value = var.fruit_name
}