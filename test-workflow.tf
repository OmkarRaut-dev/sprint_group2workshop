resource "aws_vpc" "test_vpc" {
  cidr_block = "13.13.0.0/16"

  tags = {
    "Name" = "testing github workflow"
  }
  
}