resource "aws_instance" "web1" {
  ami = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [sgr-03d99f090de59ac2e]
  key_name = today-feb6
}

resource "aws_instance" "web2" {
  ami = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public2.id
  vpc_security_group_ids = [sgr-03d99f090de59ac2e]
  key_name = today-feb6
}
