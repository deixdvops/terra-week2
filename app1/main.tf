module "server1" {
    source = "../modules/ec2"
    ami = "ami-061dc0582f86ee66b"
    region = "us-east-1"
    instance_type = "t2.micro"
    name = "dev-server"
}