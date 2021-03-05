resource "aws_instance" "public" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
  }
  tags = {
    "Name" = "Mini-Project"
  }
}

resource "aws_instance" "private" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private.id
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
  }
  tags = {
    "Name" = "Mini-Project"
  }
}