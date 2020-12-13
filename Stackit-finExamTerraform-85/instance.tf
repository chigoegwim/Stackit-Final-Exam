resource "aws_instance" "FinExam-instance" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.FinExam-instance-SG.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.id
}

