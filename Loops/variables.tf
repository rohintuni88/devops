variable "ami-name"{
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_type_t2micro"{
    type = string
    default = "t2.micro"
}

variable "instance_type_t3small"{
    type = string
    default = "t3.small"
}

variable "instance_names"{
    type = list
    default = ["mangoDB","redis", "mysql","rabbitmq", 
    "catalougue","user","cart","shipping", "payment", 
    "dispatch", "web"]
}

 variable "tags-maps"{
    type = map
    default = {
        Name ="Hello Rohin 7012024"
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

