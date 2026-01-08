resource "aws_instance" "example1" {
  for_each = var.ec2_instances
  ami           = var.mathi-ami
  instance_type = each.value
 # count = var.novm

# attaching security gourp to ec2 vm
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    # Name = "${var.vm-name}-${count.index}"
    Name = "mathi-vm-${each.key}"
  }
}