provider "aws" {
  region = "eu-west-1"
  alias  = "eu-west-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "us-west-1"
  alias  = "us-west-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "ap-northeast-1"
  alias  = "ap-northeast-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "eu-west-2"
  alias  = "eu-west-2"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "ca-central-1"
  alias  = "ca-central-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "ap-southeast-2"
  alias  = "ap-southeast-2"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "us-east-2"
  alias  = "us-east-2"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "ap-southeast-1"
  alias  = "ap-southeast-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "eu-west-3"
  alias  = "eu-west-3"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "ap-northeast-2"
  alias  = "ap-northeast-2"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "eu-central-1"
  alias  = "eu-central-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "us-west-2"
  alias  = "us-west-2"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}
provider "aws" {
  region = "ap-south-1"
  alias  = "ap-south-1"
  profile             = "${var.aws_profile}"
  allowed_account_ids = "${var.allowed_account_ids}"
}

data "template_file" "user_data" {
  template = "${file("${path.module}/blockchain-user-data.sh.tmpl")}"
}

//module "node1" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_eu_west_1}"
//  ami_id              = "${var.blockchain_ami_id_eu_west_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.eu-west-1"
//  }
//}
//
//output "node1" {
//  value = "${module.node1.instance_public_ip_address}"
//}
//
//module "node2" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_us_east_1}"
//  ami_id              = "${var.blockchain_ami_id_us_east_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.us-east-1"
//  }
//}
//
//output "node2" {
//  value = "${module.node2.instance_public_ip_address}"
//}
//
//module "node3" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_us_west_1}"
//  ami_id              = "${var.blockchain_ami_id_us_west_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.us-west-1"
//  }
//}
//
//output "node3" {
//  value = "${module.node3.instance_public_ip_address}"
//}
//
//module "node4" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_ap_northeast_1}"
//  ami_id              = "${var.blockchain_ami_id_ap_northeast_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.ap-northeast-1"
//  }
//}
//
//output "node4" {
//  value = "${module.node4.instance_public_ip_address}"
//}
//
//module "node5" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_eu_west_2}"
//  ami_id              = "${var.blockchain_ami_id_eu_west_2}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.eu-west-2"
//  }
//}
//
//output "node5" {
//  value = "${module.node5.instance_public_ip_address}"
//}
//
//module "node6" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_ca_central_1}"
//  ami_id              = "${var.blockchain_ami_id_ca_central_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.ca-central-1"
//  }
//}
//
//output "node6" {
//  value = "${module.node6.instance_public_ip_address}"
//}
//
//module "node7" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_ap_southeast_2}"
//  ami_id              = "${var.blockchain_ami_id_ap_southeast_2}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.ap-southeast-2"
//  }
//}
//
//output "node7" {
//  value = "${module.node7.instance_public_ip_address}"
//}
//
//module "node8" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_us_east_2}"
//  ami_id              = "${var.blockchain_ami_id_us_east_2}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.us-east-2"
//  }
//}
//
//output "node8" {
//  value = "${module.node8.instance_public_ip_address}"
//}
//
//module "node9" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_ap_southeast_1}"
//  ami_id              = "${var.blockchain_ami_id_ap_southeast_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.ap-southeast-1"
//  }
//}
//
//output "node9" {
//  value = "${module.node9.instance_public_ip_address}"
//}
//
//module "node10" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_eu_west_3}"
//  ami_id              = "${var.blockchain_ami_id_eu_west_3}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.eu-west-3"
//  }
//}
//
//output "node10" {
//  value = "${module.node10.instance_public_ip_address}"
//}
//
//module "node11" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_ap_northeast_2}"
//  ami_id              = "${var.blockchain_ami_id_ap_northeast_2}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.ap-northeast-2"
//  }
//}
//
//output "node11" {
//  value = "${module.node11.instance_public_ip_address}"
//}
//
//module "node12" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_eu_central_1}"
//  ami_id              = "${var.blockchain_ami_id_eu_central_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.eu-central-1"
//  }
//}
//
//output "node12" {
//  value = "${module.node12.instance_public_ip_address}"
//}
//
//module "node13" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_us_west_2}"
//  ami_id              = "${var.blockchain_ami_id_us_west_2}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.us-west-2"
//  }
//}
//
//output "node13" {
//  value = "${module.node13.instance_public_ip_address}"
//}
//
//module "node14" {
//  source              = "../modules/blockchain"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_ap_south_1}"
//  ami_id              = "${var.blockchain_ami_id_ap_south_1}"
//
//  user_data           = "${data.template_file.user_data.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.ap-south-1"
//  }
//}
//
//output "node14" {
//  value = "${module.node14.instance_public_ip_address}"
//}
//
//
///** SPAMNODES */
//data "template_file" "user_data_spamnode" {
//  template = "${file("${path.module}/spamnode-user-data.sh.tmpl")}"
//
//  vars {
//    node = "34.243.86.228"
//  }
//}
//
//module "spam1" {
//  source              = "../modules/spamnode"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_eu_west_1}"
//  ami_id              = "${var.blockchain_ami_id_eu_west_1}"
//
//  user_data           = "${data.template_file.user_data_spamnode.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.eu-west-1"
//  }
//}
//
//output "spam1" {
//  value = "${module.spam1.instance_public_ip_address}"
//}
//
//data "template_file" "user_data_spamnode_2" {
//  template = "${file("${path.module}/spamnode-user-data.sh.tmpl")}"
//
//  vars {
//    node = "52.47.152.8"
//  }
//}
//
//module "spam2" {
//  source              = "../modules/spamnode"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_us_east_1}"
//  ami_id              = "${var.blockchain_ami_id_us_east_1}"
//
//  user_data           = "${data.template_file.user_data_spamnode_2.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.us-east-1"
//  }
//}
//
//output "spam2" {
//  value = "${module.spam2.instance_public_ip_address}"
//}
//
//data "template_file" "user_data_spamnode_3" {
//  template = "${file("${path.module}/spamnode-user-data.sh.tmpl")}"
//
//  vars {
//    node = "52.78.213.203"
//  }
//}
//
//module "spam3" {
//  source              = "../modules/spamnode"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_eu_west_3}"
//  ami_id              = "${var.blockchain_ami_id_eu_west_3}"
//
//  user_data           = "${data.template_file.user_data_spamnode_3.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.eu-west-3"
//  }
//}
//
//output "spam3" {
//  value = "${module.spam3.instance_public_ip_address}"
//}
//
//data "template_file" "user_data_spamnode_4" {
//  template = "${file("${path.module}/spamnode-user-data.sh.tmpl")}"
//
//  vars {
//    node = "34.218.135.3"
//  }
//}
//
//module "spam4" {
//  source              = "../modules/spamnode"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_ap_southeast_2}"
//  ami_id              = "${var.blockchain_ami_id_ap_southeast_2}"
//
//  user_data           = "${data.template_file.user_data_spamnode_4.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.ap-southeast-2"
//  }
//}
//
//output "spam4" {
//  value = "${module.spam4.instance_public_ip_address}"
//}
//
//data "template_file" "user_data_spamnode_5" {
//  template = "${file("${path.module}/spamnode-user-data.sh.tmpl")}"
//
//  vars {
//    node = "52.57.251.121"
//  }
//}
//
//module "spam5" {
//  source              = "../modules/spamnode"
//  name                = "${var.name_blockchain}"
//  aws_profile         = "${var.aws_profile_fluzfluz}"
//  allowed_account_ids = "${var.allowed_account_ids}"
//  ebs_size            = "${var.blockchain_volume_size}"
//  ssh_public_key      = "${var.ssh_public_key_blockchain}"
//
//  region              = "${var.blockchain_region_us_west_1}"
//  ami_id              = "${var.blockchain_ami_id_us_west_1}"
//
//  user_data           = "${data.template_file.user_data_spamnode_5.rendered}"
//
//  instance_type       = "${var.blockchain_instance_class}"
//
//  providers = {
//    "aws" = "aws.us-west-1"
//  }
//}
//
//output "spam5" {
//  value = "${module.spam5.instance_public_ip_address}"
//}