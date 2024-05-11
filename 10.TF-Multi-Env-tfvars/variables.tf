variable "instance_names" {
  type = map(string)
}

variable "common_tags" {
  type = map(any)
  default = {
    Project   = "Expense"
    Terraform = "true"
  }
}

variable "environment" {
}

variable "zone_id" {
  default = "Z0363750E04SVYISPQAR"
}

variable "domain_name" {
  default = "step-into-iot.cloud"
}