resource "aws_instance" "example1" {
  ami           = var.mathi-ami
  instance_type = var.vm-size
# attaching security gourp to ec2 vm
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.vm-name
  }
}