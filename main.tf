provider "aws" {
  region = "us-east-1"  
}

# Define the EC2 instances
resource "aws_instance" "Masterinstance" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.medium"
  tags = {
    Name = "MasterInstance"
  }
}

resource "aws_instance" "SlaveInstance1" {
  ami           = "ami-0a6b2839d44d781b2"  # Specify the AMI ID for your desired image
  instance_type = "t2.small"
  tags = {
    Name = "SlaveInstance1"
  }
}

resource "aws_instance" "SlaveInstance2" {
  ami           = "ami-0a6b2839d44d781b2"  # Specify the AMI ID for your desired image
  instance_type = "t2.small"
  tags = {
    Name = "SlaveInstance2"
  }
}
