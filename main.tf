terraform {
  required_version = ">= 1.3.9"
}

x

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

output "hello_world" {
  value = "Hello branch planner, ${var.subject}!"
}
