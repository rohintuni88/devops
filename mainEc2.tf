resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mySecurity4Jan.id] #this means list

  tags = {
    Name = "HelloRohin"
  }
}

resource "aws_security_group" "mySecurity4Jan" { #terraform name
    name = var.sg-name # aws name
    description = var.sg-desp
    #vpc_id = aws_vpc.main.id 

    ingress {
        description = "Allow all port"
        from_port = var.sg-inbound-outbound-port
        to_port = var.sg-inbound-outbound-port
        protocol = "tcp"
        cidr_blocks = var.cidr_blocks
        #ipv6_cidr_blocks = 

    }
    
    egress {
        from_port = var.sg-inbound-outbound-port
        to_port = var.sg-inbound-outbound-port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }

    tags ={
        Name ="HelloRohin"
    }
}