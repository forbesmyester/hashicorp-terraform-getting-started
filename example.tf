// You cannot use env vars directly, for example in provider "aws". You need to have these variables up here.
variable "aws_profile" {}

provider "aws" {
    profile = "${var.aws_profile}"
    region = "us-east-1"
}

resource "aws_instance" "example" {
    // Switching to t2 micro forced change to Amazon HVM meaning that the AMI was invalid, so i changed it... 
    ami = "ami-08111162"
    instance_type = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${aws_instance.example.public_ip} > file.txt"
    }
}

resource "aws_eip" "ip" {
    // Referencees the above block!
    instance = "${aws_instance.example.id}"
}

module "with-net" {
    source = "./with-net"
    net-quad-2 = 2
}

output "ip" {
    // Outputs stuff to the screen... nice!
    value = "${aws_eip.ip.public_ip}"
}
