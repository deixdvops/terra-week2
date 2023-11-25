variable "ami" {
    description = "Amazon machine Image"
    type = string
    default = "ami-0e8a34246278c21e4"
  
}
variable "instance_type" {
    description = "Instance-type"
    type = string
    default = "t2.micro"
  
}

variable "region" {
    default = "us-east-1"
  
}
variable "name" {
  default = "Dev-server-deix"
}
variable "aws_profile" {
  description = "The AWS CLI profile to use"
  type        = string
  default = "devops125k"
}