variable "instance_names" {
  type = map(string)
  default = {
    db = "t2.small",
    be = "t2.micro",
    fe = "t2.micro"
  }
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "Expense"
    Environment = "Dev"
    Terraform   = "true"
  }
}

variable "zone_id" {
  default = "Z0363750E04SVYISPQAR"
}

variable "domain_name" {
  default = "step-into-iot.cloud"
}