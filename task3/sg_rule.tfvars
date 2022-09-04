region = "ap-south-1"
security_group_id = "sg-06a7345811e412617"
sg_rules ={
    rule1 ={
        type = "ingress"
        from_port = "0"
        to_port = "65000"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    rule2 ={
        type = "ingress"
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }


}