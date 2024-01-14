resource "aws_instance" "web" {
  count=11
  ami           = var.ami-name
  instance_type = var.instance_type_t2micro
  #vpc_security_group_ids = [aws_security_group.mySecurity4Jan.id] #this means list

  tags = {
    name=var.instance_names[count.index]
  }
}

#resource "aws_route53_record" "www" {
#   zone_id = aws_route53_zone.primary.zone_id
#   name    = var.instance_names[count.index]
#   type    = "A"
#   ttl     = 300
#   records = [aws_eip.lb.public_ip]
# } 

output "myoutput" {
  instance_type =   
  
}