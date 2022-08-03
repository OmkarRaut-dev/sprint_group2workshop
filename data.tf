data "aws_vpc" "blue_green_deployment" {
  filter {
    name   = "tag:Name"
    values = ["lab-vpc"]
  }

}