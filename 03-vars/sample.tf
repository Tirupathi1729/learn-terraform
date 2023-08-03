variable "fruit_name" {
  default = "mango"
}
output "out" {
  value = var.fruit_name
}
variable "fruit_name1" {
  default =["mango","appple"]
}
output "out11" {
  value = var.fruit_name1
}
variable "fruit_name2" {

  default = {
    apple=100
    mango=100

  }
}
output "out12" {
  value = var.fruit_name2
}
