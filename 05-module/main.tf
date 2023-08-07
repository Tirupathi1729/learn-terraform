module "test" {
  source = "./local-module"
  instance_type = var.instance_type     # variable calling
}
output "all_local_module" {
  value = module.test      # what ever data is there in locL-module it prints all
}
output "specific_block" {
  value = module.test.ami1    # To print specfic block data
}

output "one_ami" {
  value = module.test.ami
}



#variable declaration

variable "instance_type" {
  default = "t2.micro"
}