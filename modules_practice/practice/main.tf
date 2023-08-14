variable "variables" {}

output "out1" {
  value = var.variables      # output = hello
}


variable "variable1" {
  default = "Good Morning"
}
output "out" {                         # output = good morning
  value = var.variable1
}

