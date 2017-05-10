#------------------------------------------#
# Rancher RDS Configuration
#------------------------------------------#
resource "aws_db_instance" "default" {
  allocated_storage      = 50
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7.10"
  port                   = "3306"
  instance_class         = "db.m3.xlarge"
  identifier             = "rancher-server"
  name                   = "rancherdb"
  username               = "ampadmin"
  password               = "6TmK6uE7wW"
  db_subnet_group_name   = "default-vpc-35fda851"
  parameter_group_name   = "default.mysql5.7"
  vpc_security_group_ids = "[subnet-7cf06d0a, subnet-cc0540a8]"
  multi_az               = "true"
      tags {
        Name = "Rancher-Server"
        Deployment = "Prod"
        Component = "Rancher"
        Project = "PGE"
    }
}
