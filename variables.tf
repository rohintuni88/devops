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
    default = ["0.0.0.0./0"]
}

