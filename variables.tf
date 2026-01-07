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