#------------------------------------------#
# AWS R53 Configuration
#------------------------------------------#
resource "aws_route53_record" "default" {
   zone_id = "${var.zone_id}"
   name = "rancher.aerpge.com"
   type = "A"
   ttl = "300"
   records = ["${aws_instance.Rancher.0.private_ip}"]
   records = ["${aws_instance.Rancher.1.private_ip}"]
}
