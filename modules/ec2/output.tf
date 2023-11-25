output "public-ip" {
   value =  aws_instance.demo.public_ip
  
}
output "instance-public_dns" {
    value = aws_instance.demo.public_dns
  
}
output "instance-id" {
  value = aws_instance.demo.id
}
output "instance-name" {
    value= aws_instance.demo.tags
  
}