resource "aws_lb" "alb" {
  name = "streamline-alb"
  load_balancer_type = "application"
  subnets = [aws_subnet.public1.id, aws_subnet.public2.id]
  security_groups = [sg-0eed444d11d7b496b]
}

resource "aws_lb_target_group" "tg" {
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.streamline.id
}
