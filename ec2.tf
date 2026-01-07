resource "aws_instance" "example1" {
  ami           = var.mathi-ami
  instance_type = var.vm-size

  tags = {
    Name = var.vm-name
  }
}