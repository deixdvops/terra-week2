data "aws_instance" "demo" {
  instance_id = "i-05396adec63dde93d"

  filter {
    name   = "image-id"
    values = ["ami-0230bd60aa48260c6"]
  }

}

data "aws_ami" "amzon_linux" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}