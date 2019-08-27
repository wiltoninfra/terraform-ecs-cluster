resource "aws_internet_gateway" "app-internet-gateway" {
  vpc_id = "${aws_vpc.app-test-vpc.id}"

  tags = {
    Name = "app-internet-gateway"
  }
}