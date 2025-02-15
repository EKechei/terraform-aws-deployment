
resource "aws_security_group" "webSg" {
  name   = "web"
  vpc_id = aws_vpc.main.id

  ingress {
    description = "HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    tags = {
    Name = "Web-sg"
  }
}



resource "aws_security_group" "albSg" {
  name = "AlbSg"
  vpc_id = aws_vpc.main.id


 ingress {
    description = "HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    tags= {
      Name = "AlbSg"
    }

}