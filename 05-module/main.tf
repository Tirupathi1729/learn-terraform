module "test" {
  source = "./local-module"
}
output "ami" {
  value = module.test
}
output "specific_data" {
  value = module.test.ami
}