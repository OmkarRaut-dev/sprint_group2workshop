resource "aws_security_group" "web_server_sg" {
  name        = "web_server_sg"
  description = "Allow connection for  inbound traffic"
  vpc_id      = data.aws_vpc.blue_green_deployment.id

  ingress {
    description      = "allow port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "allow port 443"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["202.12.82.6/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "web_server_sg"
  }
}

resource "aws_security_group" "load_balancer_sg" {
  name        = "load_balancer_sg"
  description = "Allow connection for  inbound traffic"
  vpc_id      = data.aws_vpc.blue_green_deployment.id

  ingress {
    description      = "allow port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "load_balancer_sg"
  }
}