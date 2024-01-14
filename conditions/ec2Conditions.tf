resource "aws_instance" "web" {
  ami           = var.ami-name
  instance_type = var.instance_name_mangoDB==var.instance_name_mangoDB ? var.instance_type_t3small : var.instance_type_t2micro # Condition
  #vpc_security_group_ids = [aws_security_group.mySecurity4Jan.id] #this means list

  tags = var.tags-maps
}