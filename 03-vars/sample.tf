variable "fruit_name" {
  default = "mango"

}
output "first" {
  value = var.fruit_name
}


variable "fruit_name1" {
  default =["mango","appple","banana"]
}
output "list" {
  value = var.fruit_name1["1"]
}
output "list_slice" {
  value = slice(var.fruit_name1, 0, 2)     #slice function
}

variable "fruit_name5" {
  default= {
    apple = 100
    mango = 200
  }
}
output "plain_map" {
  value = "var.fruit_name5"
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

output "nested_map" {
  value = var.fruit_name2["apple"]

}
output "sting_message" {
  value = "stock of apples is ${var.fruit_name2["apple"].stock}"

}
output "sting_message1" {
  value = "stock of apples is ${var.fruit_name2["apple"].stock}"

}


variable "fruit_name4" {
  default ={
    number = 10
    name = "Tirupathi"
    for_name = true
  }

}
output "name" {
  value = "my name is ${var.fruit_name4.name}"
}



output "list_map" {
  value = [var.fruit_name1[0], "my name is ${var.fruit_name4.name}"]
}

