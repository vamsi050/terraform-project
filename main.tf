provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source      = "./modules/ec2"
  instance_name = var.ec2_instance_name
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.s3_bucket_name
}

module "lambda_function" {
  source          = "./modules/lambda"
  function_name   = var.lambda_function_name
  s3_bucket_name  = module.s3_bucket.bucket_name
}
