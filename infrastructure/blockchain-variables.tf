variable "aws_profile" {
  type        = "string"
  description = "If you do not know what to write here - 'fluzfluz' is a good choice."
}

variable "name_blockchain" {
  type    = "string"
  default = "quorum-node"
}

variable "name_spamnode" {
  type    = "string"
  default = "spamnode"
}

variable "name_blockchain_explorer" {
  type    = "string"
  default = "blockchain-explorer"
}

variable "ssh_public_key_blockchain" {
  type    = "string"
  default = ""
}

variable "aws_profile_fluzfluz" {
  type    = "string"
  default = "fluzfluz"
}

variable "blockchain_instance_class" {
  type    = "string"
  default = "c5.2xlarge"
}

variable "blockchain_volume_size" {
  type    = "string"
  default = 20
}


// Region specific
variable "blockchain_region_us_east_1" {
  type    = "string"
  default = "us-east-1"
}

variable "blockchain_ami_id_us_east_1" {
  type    = "string"
  default = "ami-66506c1c"
}

variable "blockchain_region_us_east_2" {
  type    = "string"
  default = "us-east-2"
}

variable "blockchain_ami_id_us_east_2" {
  type    = "string"
  default = "ami-965e6bf3"
}

variable "blockchain_region_us_west_1" {
  type    = "string"
  default = "us-west-1"
}

variable "blockchain_ami_id_us_west_1" {
  type    = "string"
  default = "ami-07585467"
}

variable "blockchain_region_us_west_2" {
  type    = "string"
  default = "us-west-2"
}

variable "blockchain_ami_id_us_west_2" {
  type    = "string"
  default = "ami-79873901"
}

variable "blockchain_region_ap_south_1" {
  type    = "string"
  default = "ap-south-1"
}

variable "blockchain_ami_id_ap_south_1" {
  type    = "string"
  default = "ami-84e3b2eb"
}

variable "blockchain_region_ap_northeast_2" {
  type    = "string"
  default = "ap-northeast-2"
}

variable "blockchain_ami_id_ap_northeast_2" {
  type    = "string"
  default = "ami-ab77d4c5"
}

variable "blockchain_region_ap_southeast_1" {
  type    = "string"
  default = "ap-southeast-1"
}

variable "blockchain_ami_id_ap_southeast_1" {
  type    = "string"
  default = "ami-b7f388cb"
}

variable "blockchain_region_ap_southeast_2" {
  type    = "string"
  default = "ap-southeast-2"
}

variable "blockchain_ami_id_ap_southeast_2" {
  type    = "string"
  default = "ami-33ab5251"
}

variable "blockchain_region_ap_northeast_1" {
  type    = "string"
  default = "ap-northeast-1"
}

variable "blockchain_ami_id_ap_northeast_1" {
  type    = "string"
  default = "ami-48630c2e"
}

variable "blockchain_region_ca_central_1" {
  type    = "string"
  default = "ca-central-1"
}

variable "blockchain_ami_id_ca_central_1" {
  type    = "string"
  default = "ami-173db873"
}

variable "blockchain_region_eu_central_1" {
  type    = "string"
  default = "eu-central-1"
}

variable "blockchain_ami_id_eu_central_1" {
  type    = "string"
  default = "ami-5055cd3f"
}

variable "blockchain_region_eu_west_1" {
  type    = "string"
  default = "eu-west-1"
}

variable "blockchain_ami_id_eu_west_1" {
  type    = "string"
  default = "ami-1b791862"
}

variable "blockchain_region_eu_west_2" {
  type    = "string"
  default = "eu-west-2"
}

variable "blockchain_ami_id_eu_west_2" {
  type    = "string"
  default = "ami-941e04f0"
}

variable "blockchain_region_eu_west_3" {
  type    = "string"
  default = "eu-west-3"
}

variable "blockchain_ami_id_eu_west_3" {
  type    = "string"
  default = "ami-c1cf79bc"
}
