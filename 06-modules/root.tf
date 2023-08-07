module "test" {
  source = "./local-module"
}
output "all_local_module" {
  value = module.test
}