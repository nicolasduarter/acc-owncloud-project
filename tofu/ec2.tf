resource "aws_instance" "owncloud_server" {
  ami                    = "ami-08f44e8eca9095668"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.owncloud_sg.id]
  key_name               = "owncloud-key"

  associate_public_ip_address = true

  tags = {
    Name = "owncloud-server"
  }
}