resource "aws_vpc" "trial_vpc" {
  cidr_block = "13.13.0.0/16"

  tags = {
    Name = "trial_vpc"
  }
}