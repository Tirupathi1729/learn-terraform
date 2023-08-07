module "test" {
  source = "./local-module"
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