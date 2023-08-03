variable "fruit_name" {
  default = "mango"

}
output "out" {
  value = var.fruit_name
}
variable "fruit_name1" {
  default =["mango","appple"]
}
output "out11" {
  value = var.fruit_name1["1"]
}
variable "fruit_name2" {

  default = {
    apple = {
      stock = 100
      price=10
    }
    mango = {
      stock = 200
    }

  }
}

output "out12" {
  value = var.fruit_name2["apple"]

}
output "out13" {
  value = "stock of apples is ${var.fruit_name2["apple"].stock}"

}
variable "fruit_name4" {
  default ={
    number = 10
    name = "Tirupathi"
    for_name = true
  }




}
output "out22" {
  value = "my name is ${var.fruit_name4.name}"
}

