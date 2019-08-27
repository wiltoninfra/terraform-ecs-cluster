resource "aws_network_acl" "app-network-acl" {
    vpc_id = "${aws_vpc.app-test-vpc.id}"
    subnet_ids = ["${aws_subnet.app-subnet1.id}", "${aws_subnet.app-subnet2.id}"]
    
    egress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    ingress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    tags = {
        Name = "app-network-acl"
    }
}

