provider "aws" {
}

resource "aws_key_pair" "app_single" {
  public_key = "${var.ssh_public_key}"
  count      = "${var.ssh_public_key != "" ? 1 : 0}"
}

resource "aws_instance" "app_single" {
  ami                    = "${var.ami_id}"
  instance_type          = "${var.instance_type}"
  iam_instance_profile   = "${var.instance_profile_name}"
  key_name               = "${element(concat(aws_key_pair.app_single.*.key_name, list(var.key_name)), 0)}"

  vpc_security_group_ids = ["${aws_security_group.allow_all_sp.id}"]

  source_dest_check      = "${var.source_dest_check}"
  user_data              = "${var.user_data}"

  root_block_device {
    volume_size           = "${var.ebs_size}"
    volume_type           = "gp2"
    delete_on_termination = true
  }

  tags {
    Name = "${var.name}-single"
  }
}

resource "aws_eip" "address" {
  instance = "${aws_instance.app_single.id}"
  vpc      = true

  count    = "${var.eipalloc_id == "" && var.use_external_ip ? 1 : 0}"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = "${aws_instance.app_single.id}"
  allocation_id = "${var.eipalloc_id}"

  count         = "${var.eipalloc_id != "" && var.use_external_ip ? 1 : 0}"
}

resource "aws_default_vpc" "default" {
  tags {
    Name = "Default VPC"
  }
}

resource "aws_security_group" "allow_all_sp" {
  name        = "allow_all_sp"
  description = "Allow all inbound traffic (spamtest nodes testing)"
  vpc_id      = "${aws_default_vpc.default.id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
