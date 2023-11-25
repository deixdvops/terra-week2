# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "demo" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1d"


  instance_type      = "t2.micro"
  ipv6_address_count = 0

  key_name                   = "data_source"
  monitoring                 = false
  placement_group            = null
  placement_partition_number = 0

  security_groups = ["launch-wizard-1"]

  subnet_id = "subnet-09ff9fe257b13aff3"
  tags = {
    Name = "web-test"
    env  = "dev"
  }


}
