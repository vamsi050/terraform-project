provider "aws" {
  region = var.aws_region
}

module "aws_instance" {
  source      = "./modules/ec2"
  instance_name = var.ec2_instance_name
  ami = var.ami_id
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.s3_bucket_name
}
