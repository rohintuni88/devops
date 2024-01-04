resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mySecurity4Jan.id] #this means list

  tags = {
    Name = "HelloRohin"
  }
}

resource "aws_security_group" "mySecurity4Jan" { #terraform name
    name = "mySecurity4Jan_aws" # aws name
    description = "allow all inbound traffic"
    #vpc_id = aws_vpc.main.id 

    ingress {
        description = "Allow all port"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = 

    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags ={
        Name ="HelloRohin"
    }
}