terraform {
  required_version = ">= 1.3.9"
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

output "hello_world" {
  value = "Hello TF Branch Planner, ${var.subject}!"
}
