variable "fruit_name1" {
  default =["mango","appple","banana"]
}
output "list" {
  value = var.fruit_name1["1"]
}