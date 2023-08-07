module "test" {
  source = "./local-module"
  instance_type = var.instance_type   # call
}
output "all_local_module" {
  value = module.test       #both two output blocks will print
}
output "all_local_module1" {
  value = module.test.ami1  # it prints only ami1 block
}


variable "instance_type" {     # declaration
  default = "t2.micro"
}