module "test" {
  source = "./local-module"
}
output "ami" {
  value = module.test      # what ever data is there in locL-module it prints all
}
output "specific_data" {
  value = module.test.ami1    # To print specfic block data
}