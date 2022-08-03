resource "aws_vpc" "test1_vpc" {
    cidr_block = "12.12.0.0/16"
    tags = {
      "Name" = "test1_vpc"
    }
  
}