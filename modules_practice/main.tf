module "monday" {
  source = "./practice"
  variables=var.variables  # calling
}
 variable "variables" {    #declaration
   default = "Hello"
 }
output "out" {
  value = module.monday     # output = hello
}                           # output = good morning