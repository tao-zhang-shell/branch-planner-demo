terraform {
  required_version = ">= 1.3.9"
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

resource "random_id" "id" {
  keepers = {
    trigger = var.subject
  }

  byte_length = 4
}

output "hello_world" {
  value = "Hello TF Controller v0.16.0-rc.2, ${var.subject}!"
}
