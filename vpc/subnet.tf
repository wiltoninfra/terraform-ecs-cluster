resource "aws_subnet" "app-subnet1" {
    vpc_id     = "${aws_vpc.app-test-vpc.id}"
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name = "app-subnet1"
    }
}

resource "aws_subnet" "app-subnet2" {
    vpc_id     = "${aws_vpc.app-test-vpc.id}"
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1b"

    tags = {
        Name = "app-subnet2"
    }
}

output "subnet1-id" {
  value = "${aws_subnet.app-subnet1.id}"
}

output "subnet2-id" {
  value = "${aws_subnet.app-subnet2.id}"
}