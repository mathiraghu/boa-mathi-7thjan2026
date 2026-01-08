variable "mathi-ami" {
  type = string
  description = "this is gonna store NV region ami ID"
  default = "ami-068c0051b15cdb816"
}

variable "vm-size" {
    type = string
    #default = "t3.micro"
  
}

variable "vm-name" {
    type = string
    #default= "mathi-vm1"
  
}
variable "novm" {
  type = number
  description = "this is the number of vm created"
  
}

# variable with map data type
variable "ec2_instances" {
  type = map(string)
  default = {
    "web" = "t3.micro"
    "db" = "t2.small"
  }
}
# above each gonna key:value pair