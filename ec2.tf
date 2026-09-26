module "ec2-test" {
  source = "../terraform-aws-ec2"

  instance_type      = "t3.micro"
  security_group_ids = ["sg-REPLACE-WITH-YOUR-SG-ID"]

  tags = {
    Name      = "Module-test"
    terraform = "true"
  }
}