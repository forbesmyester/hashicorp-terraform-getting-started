variable "net-quad-2" {}

resource "aws_vpc" "the-vpc" {
    cidr_block = "10.${var.net-quad-2}.0.0/16"
    tags {
        Name = "the-vpc"
    }
}

resource "aws_subnet" "the-vpc-subnet" {
    cidr_block = "10.${var.net-quad-2}.1.0/24"
    vpc_id = "${aws_vpc.the-vpc.id}"
    tags {
        Name = "the-vpc-subnet"
    }
}

resource "aws_instance" "the-vpc-subnet-instance" {
    ami = "ami-08111162"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.the-vpc-subnet.id}"
    tags {
        Name = "the-vpc-subnet-instance"
    }
    key_name = "fozz-rsa"
}

resource "aws_key_pair" "debug" {
    key_name = "fozz-rsa"
    public_key = "${file("~/.ssh/id_rsa.pub")}"
}
