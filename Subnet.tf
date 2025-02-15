resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.aws_subnet1
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.aws_subnet2
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"

tags = {
  Name = "public2"
}
} 