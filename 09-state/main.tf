terraform {
  backend "s3" {
    bucket = "tf-state-ktrb74"
    key = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}
variable "test" {
  default = "hello"

}
output "test1" {
  value = var.test
}