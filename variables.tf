variable "instance_ami" {
  type        = string
  description = "Provide the AMI of the Instance"
  default     = "ami-047a51fa27710816e"
}

variable "instance_type" {
  description = "Provide the Instance Type"
  default = "t2.micro"
}