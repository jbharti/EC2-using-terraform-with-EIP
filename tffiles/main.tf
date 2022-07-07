provider "aws" {
  region     = "us-east-1"
}

terraform {
  required_version = "~> 1.0.3"
  backend "s3" {}
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.app.id[0]
  allocation_id = lookup(var.app, "eipallocid") 
}

module "app" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  version                     = "2.21.0"
  name                        = lookup(var.app, "name") 
  ami                         = lookup(var.app, "ami")
  instance_type               = lookup(var.app, "instance_type")
  private_ips                 = lookup(var.app, "private_ips")
  instance_count              = length(lookup(var.app, "private_ips")) 
  vpc_security_group_ids      = var.security_groups  
  subnet_id                   = var.subnet_id  
  tags = {
    Cost = var.Cost	
  } 
}
