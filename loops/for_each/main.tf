variable "components"{
  default = {
    catalogue={
      name="catalogue_sg"
    }
    mongodb={
      name="mongodb_sg"
    }
    frontend={
      name="frontend_sg"
    }
  }
}

resource "aws_security_group" "allow_all" {
  for_each = var.components
  name = lookup(var.components,each.value["name"],null)
}