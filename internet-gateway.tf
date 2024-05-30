resource "aws_internet_gateway" "public_internet_gateway" {
  vpc_id = aws_vpc.vpc-tf.id
  tags = {
    Name = "IGW: terraform Project"
  }
}