output "instance_public_ip_address" {
  value = "${aws_eip.address.*.public_ip}"
}

output "instance_name" {
  value = "${aws_instance.app_single.tags.Name}"
}

output "region" {
  value = "${var.region}"
}
