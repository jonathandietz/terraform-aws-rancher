#------------------------------------------#
# Rancher Server EC2 Configuration
#------------------------------------------#

resource "aws_instance" "Rancher" {
  count = "2"
  ami = "ami-5ec1673e"
  instance_type = "m3.xlarge"
  subnet_id="subnet-10f76a66"
  security_groups = ["sg-a22176c4"]
  key_name = "atsp-preprod-pge"
  user_data = "${file("setup.txt")}"
  root_block_device {
    volume_type = "gp2"
    volume_size = "50"
    delete_on_termination = "true"
   }
      tags {
        Name = "PGE-Rancher-test"
        Deployment = "Prod"
        Component = "Rancher"
        Project = "PGE"
    }
