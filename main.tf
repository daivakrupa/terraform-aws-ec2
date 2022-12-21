provider "aws"{
    region = "us-east-2"
}

module "ec2service" {
  source  = "app.terraform.io/DaivakrupaThota/ec2service/aws"
  version = "1.0.1"
  # insert required variables here
  ami = "ami-0a606d8395a538502"
  instance_type = "t2.micro"
  key_name = "test-kp"
  security_group_ids = ["sg-06edef7f9c022944e"]
  subnet_id = "subnet-0f0d09596addfc822"
  name = "Name"
  env = "dev"
}