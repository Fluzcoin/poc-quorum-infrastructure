variable "name" {}

variable "region" {
  type = "string"
}

variable "aws_profile" {
  type = "string"
}

variable "allowed_account_ids" {
  type = "list"
}

variable "key_name" {
  type    = "string"
  default = ""
}

variable "ssh_public_key" {
  type    = "string"
  default = ""
}

variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}

variable "instance_profile_name" {
  type    = "string"
  default = ""
}

variable "ami_id" {}

variable "eipalloc_id" {
  type    = "string"
  default = ""
}

variable "use_external_ip" {
  default = true
}

variable "source_dest_check" {
  type    = "string"
  default = "true"
}

variable "ebs_size" {
  default = 30
}

variable "user_data" {
  type    = "string"
  default = ""
}