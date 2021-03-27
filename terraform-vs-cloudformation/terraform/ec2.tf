resource "aws_instance" "test-instance" {
  instance_type = "t3.micro"
  ami = "ami-0ef85cf6e604e5650" # Ubuntu Server 18.04 LTS (HVM), SSD Volume Type (64-bit x86)
  subnet_id = "subnet-00301c4fabb0d2def"
  associate_public_ip_address = true
  # key_name = aws_key_pair.participant-key.id
  security_groups = ["sg-08cb2b147c604dae4"]

  root_block_device {
    # device_name           = "/dev/sdb"
    volume_type           = "standard"
    volume_size           = 8
    delete_on_termination = true # TODO? Change to false? ref https://github.com/recruit-tech/r-isucon/blob/master/provisioning/terraform/modules/management/ec2/main.tf#L20
  }

  tags = {
    Name = "instance-by-terraform"
  }
}
