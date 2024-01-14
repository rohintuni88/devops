variable "ami-name"{
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_type-name"{
    type = string
    default = "t2.micro"
}

variable "tags-maps"{
    type = map
    default = {
        Name ="Hello Rohin 6012024"
        Project ="Terraform"
        env ="Dev"
        Componet ="WebApp"
        terraform = "true"
    }
}

variable "sg-name" {
    type = string
    default = "mySecurity4Jan_aws"
}

variable "sg-desp" {
    type = string
    default = "allow all ports"
}

variable "sg-inbound-outbound-port" {
    default = 0
}


variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

