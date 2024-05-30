# Create AWS VPC in ap-southeast-1
# CIDR - 10.0.0.0/16
resource "aws_vpc" "vpc-tf" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "VPC: terraform"
  }
}



