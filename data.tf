data "aws_vpc" "blue_green_deployment" {
  filter {
    name   = "tag:Name"
    values = ["Group2_VPC"]
  }

}