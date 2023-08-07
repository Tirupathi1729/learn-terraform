module "test" {
  source = "./local-module"
}
output "all_local_module" {
  value = module.test       #both two output blocks will print
}
output "all_local_module1" {
  value = module.test.ami1  # it prints only ami1 block
}