data "aws_subnet" "public_subnet" {
  filter {
    name = "tag:Name"
    values = ["Subnet-Public : Public Subnet 1"]
  }

  depends_on = [
    aws_route_table_association.public_subnet_asso
  ]
}

resource "aws_instance" "ec2_example" {
  ami = "ami-003c463c8207b4dfa"
  instance_type = "t2.micro"
  tags = {
    Name = "EC2"
  }
  subnet_id = data.aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_vpc_tf.id]
}

