resource "aws_lb" "myalb" {
  name = "myalb"
  internal = "false"
  load_balancer_type = "application"
  security_groups = [aws_security_group.albSg.id]
  subnets = [aws_subnet.public1.id, aws_subnet.public2.id]

  tags={
    Name= "myalb"
  }
}

resource "aws_lb_target_group" "mytg" {
  name = "myTG"
  vpc_id = aws_vpc.main.id
  port = "80"
  protocol = "HTTP"

  health_check {
    path = "/"
    port= "traffic-port"
  }
}


resource "aws_lb_target_group_attachment" "attachment1" {
  target_group_arn = aws_lb_target_group.mytg.arn
  target_id = aws_instance.Webserver1.id
  port = 80
}

resource "aws_lb_target_group_attachment" "attachment2" {
  target_group_arn = aws_lb_target_group.mytg.arn
  target_id = aws_instance.Webserver2.id
  port = 80
}


resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.myalb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.mytg.arn
  }
}
