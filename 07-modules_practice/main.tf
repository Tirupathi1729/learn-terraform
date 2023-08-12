module "module" {
  source = "./variables"
  data = var.data
}
variable "data" {
  default = "hello"
}
output "all" {
  value = module.module
}