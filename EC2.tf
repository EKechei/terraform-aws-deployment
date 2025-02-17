resource "aws_instance" "Webserver1" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = var.key_pair
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id = aws_subnet.public1.id
  user_data = base64encode(file("userdata.sh"))
  

  tags = {
    Name= "Webserver1"
  }
}

resource "aws_instance" "Webserver2" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = var.key_pair
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id = aws_subnet.public2.id
  user_data = base64encode(file("userdata1.sh"))

  tags = {
    Name = "Webserver2"
  }
  }
