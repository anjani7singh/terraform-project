provider "aws" {
  region = "ap-south-1"
}
# resource:
resource "aws_vpc" "development_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" " development_subnet1" {
  vpc_id            = aws_vpc.development_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "ap-south-1a"
}

output "aws_vpc_id" {
  value = aws_vpc.development_vpc.id
}
output "aws_subnet" {
  value = aws_subnet.development_subnet1.id
}
