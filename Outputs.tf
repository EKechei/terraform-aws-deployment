output "instance1_public_ip_adress" {
  value = aws_instance.Webserver1.public_ip
}


output "instance2_public_ip_adress" {
  value = aws_instance.Webserver2.public_ip
}

