#------------------------------------------#
# AWS Environment Values
#------------------------------------------#
output "Rancher-Server-ip-1" {
  value = "${aws_instance.Rancher.0.private_ip}"
}
output "Rancher-Server-ip-2" {
  value = "${aws_instance.Rancher.1.private_ip}"
}

output "Rancher-DB.-address" {
  value = "${aws_db_instance.default.address}"
}

output "Rancher-DB.-port" {
  value = "${aws_db_instance.default.port}"
}

output "Rancher-DB.-username" {
  value = "${aws_db_instance.default.username}"
}

output "Rancher-DB.-password" {
  value = "${aws_db_instance.default.password}"
}
