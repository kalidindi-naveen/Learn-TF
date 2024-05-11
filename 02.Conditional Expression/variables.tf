variable "image_id" {
  type        = string                  #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID"         #optional
}

variable "instance_name" {
  type    = string
  default = "db"
}

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    Module      = "DB"
    Name        = "DB"
  }
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
  default = "allowing port 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}