resource "tls_private_key" "ec2-ssh-key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "ec2-key" {
  key_name   = "provisioner-key-pair"
  public_key = tls_private_key.ec2-ssh-key.public_key_openssh
}

resource "local_file" "private_key_file" {
  content  = tls_private_key.ec2-ssh-key.private_key_pem
  filename = "provisioner-key-pair.pem"
}




