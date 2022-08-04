resource "aws_vpc" "test1" {
  cidr_block = "12.12.0.0/16"
  tags = {
    "Name" = "testing_1"
  } 
}