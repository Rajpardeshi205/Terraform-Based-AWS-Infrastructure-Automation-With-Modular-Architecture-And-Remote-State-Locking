resource "aws_instance" "exam_ec2_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.exam_ec2_key.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.exam_ec2_sg.id]
  associate_public_ip_address = var.associate_public_ip

  tags = {
    Name        = "${var.env}-exam-ec2-instance"
    Environment = var.env
  }
}

resource "aws_key_pair" "exam_ec2_key" {
  key_name   = "${var.env}-exam-ec2-key"
  public_key = file("${path.module}/exam-ec2-key.pub")

  tags = {
    Name = "${var.env}-exam-ec2-key"
  }
}

resource "aws_security_group" "exam_ec2_sg" {
  name        = "${var.env}-exam-ec2-sg"
  description = "Security Group For Public Web Server"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH From Trusted IP Only"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env}-exam-ec2-sg"
  }
}


