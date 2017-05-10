#------------------------------------------#
# AWS Environment Values
#------------------------------------------#
variable "access_key" {
    description = "AWS account access key ID"
}

variable "secret_key" {
    description = "AWS account secret access key"
}

variable "region"{
    default = "us-west-2"
    description = "EC2 Region for the VPC"
}

variable "tag_name" {
    description = "Name tag for the servers"
}

variable "zone_id" {
  description = "zone id for the R53"
}
