variable "name" {
  default = "fluzfluz"
}

variable "name_fluzcoin" {
  default = "fluzfluz"
}

variable "env" {
  default = "production"
}

variable "region" {
  default = "eu-west-1"
}

variable "allowed_account_ids" {
  type = "list"
  default = [""]
}

variable "availability_zones" {
  type    = "list"
  default = [
    "eu-west-1a",
    "eu-west-1b",
    "eu-west-1c"
  ]
}

provider "aws" {
  region              = "${var.region}"
  profile             = "${var.name}"
  allowed_account_ids = [""]
}
