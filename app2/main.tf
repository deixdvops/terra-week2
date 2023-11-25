module "server-qa" {
    source = "../modules/ec2"
    ami = "ami-0e8a34246278c21e4"
    region = "us-east-1"
    instance_type = "t2.micro"
    name = "qa-server"
}