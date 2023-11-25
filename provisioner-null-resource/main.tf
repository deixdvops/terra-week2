resource "aws_instance" "name" {
  ami           = data.aws_ami.amzon_linux.id
  instance_type = "t3.micro"
  key_name      = aws_key_pair.ec2-key.key_name
  provisioner "local-exec" {
    command = "echo 'hello' "
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("provisioner-key-pair.pem")
    host        = self.public_ip

  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "cat /etc/os-release",
      "nproc",
      "mkdir deix"

    ]

  }
  provisioner "file" {
    source      = "provisioner-key-pair.pem"
    destination = "/tmp/prov-key.pem"

  }
  ##depends_on = [ aws_key_pair.ec2-key,local_file.private_key_file  ]

}