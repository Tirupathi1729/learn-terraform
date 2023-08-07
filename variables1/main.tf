variable "fruit_name1" {
  default =["mango","appple","banana"]
}
output "list" {
  value = element(var.fruit_name1,4)
}