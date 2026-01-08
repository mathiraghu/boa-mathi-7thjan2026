output "mathi-vm-publicIP" {
    value = aws_instance.example1.*.public_ip
  
}

output "mathi-vm-id" {
  #value = aws_instance.example1.*.id
  # another method below
  value = [for i in aws_instance.example1: i.id]
}