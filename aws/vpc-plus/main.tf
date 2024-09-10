terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

# Variable definition
variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {
  type = list(string)
}
variable "av_zone" {}
variable "env_prefix" {}
variable "my_ip" {
  type = list(string)
}
variable "instance_type" {
  type = string
}
variable "pub_key_location" {}



# VPC creation
resource "aws_vpc" "webapp_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.env_prefix}_webapp_vpc"
  }
}

# Subnet Creation
resource "aws_subnet" "webapp_subnet_1" {
  vpc_id            = aws_vpc.webapp_vpc.id
  cidr_block        = var.subnet_cidr_block[0]
  availability_zone = var.av_zone
  tags = {
    Name = "${var.env_prefix}_webapp_subnet_1"
  }
}

# aws internet gateway creation
resource "aws_internet_gateway" "webapp_igw" {
  vpc_id = aws_vpc.webapp_vpc.id
  tags = {
    Name = "${var.env_prefix}_webapp_igw"
  }
}


# Custome route table creation
resource "aws_route_table" "webapp_route_table" {
  vpc_id = aws_vpc.webapp_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.webapp_igw.id
  }
  tags = {
    Name = "${var.env_prefix}_webapp_rtb"
  }
}

# # If we wish to use the deafult route table intead of our custome
# # route table as above, we will have it as below
# resource "aws_default_route_table" "main_rtb" {
#   default_route_table_id = aws_vpc.webapp_vpc.default_route_table_id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.webapp_igw.id
#   }
#   tags = {
#     Name = "${var.env_prefix}_main_rtb"
#   }
# }



# *****************************************************



# Where default-rtb is used, no need for association as below again
# Route table association with subnet_1
resource "aws_route_table_association" "a_rtb_webapp_subnet_1" {
  subnet_id      = aws_subnet.webapp_subnet_1.id
  route_table_id = aws_route_table.webapp_route_table.id
}

# Security Group creation
resource "aws_security_group" "webapp_sg" {
  name        = "allow_ssh_http_to_webapp"
  description = "Allow HTTP/SSH access on ports 22/8080 respectively"
  vpc_id      = aws_vpc.webapp_vpc.id

  # SSH access rule
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip[1]]
  }

  # HTTP access rule
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [var.my_ip[0]]
  }

  # Optional: Egress rule allowing all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env_prefix}-webapp_sg"
  }
}


# ssh key-pair creation on AWS
resource "aws_key_pair" "ssh_key" {
  key_name = "wepapp_server_key"
  # read public key from file location
  public_key = file(var.pub_key_location)

}


# *****************************************************

# Fetching EC2 Server detail
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}


# *************************************************************
# Confirm instance output according to filter before provisioning
output "aws_ami_id" {
  value = data.aws_ami.ubuntu.id

}

# *************************************************************
# Enable from here down
# Creating a VM Instance from data
resource "aws_instance" "webapp_vm" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  subnet_id              = aws_subnet.webapp_subnet_1.id
  vpc_security_group_ids = [aws_security_group.webapp_sg.id]
  availability_zone      = var.av_zone


  # associate pub-ip for ssh/http
  associate_public_ip_address = true
  # Associate key
  key_name = aws_key_pair.ssh_key.key_name

  # Enabling a script to run on the sever 
  user_data = file("startup.sh")

  tags = {
    Name = "webapp_vm"
  }
}

# Outputing the public IP address of the EC2 instance
output "ec2_public_ip" {
  value = aws_instance.webapp_vm.public_ip
}


