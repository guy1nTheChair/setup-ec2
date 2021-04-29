provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance" {
  key_name = "tf-demo"
  ami                  = "ami-0b5bff6d9495eff69"
  instance_type          = "t2.medium"
  user_data              = "${file("bootstrap_script.sh")}"
  vpc_security_group_ids = ["sg-0023eb9ce27cd9f8b"]
  iam_instance_profile   = "admin-test"
}

