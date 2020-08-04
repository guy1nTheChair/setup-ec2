provider "aws" {
  profile = "default"
  region  = "us-ap-south-1"
}


resource "aws_instance" "instance" {
  key_name      = "my-first-key-pair"
  ami           = "ami-04590e7389a6e577c"
  instance_type = "t2.medium"
  user_data = "${file("bootstrap_script.sh")}"
  
}

