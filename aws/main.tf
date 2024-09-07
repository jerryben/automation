terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
  region     = "region"     # exact region for resources
  access_key = "access-key" # Generated key
  secret_key = "secret-key" # Generated secret-key
}

resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name : "dev-vpc"
  }
}

# changed initial cidr_block from 10.10.0.0/24 to 10.10.10.0/24
resource "aws_subnet" "dev-frontend" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.10.10.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name : "dev-frontend"
  }
}

# changed initial cidr_block from 10.10.1.0/24 to 10.10.20.0/24
resource "aws_subnet" "dev-backend" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.10.20.0/24"
  tags = {
    Name : "dev-backend"
  }
}

# changed initial cidr_block from 10.10.2.0/24 to 10.10.30.0/24
resource "aws_subnet" "dev-databse" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.10.30.0/24"
  tags = {
    Name : "dev-database"
  }
}

# Fetch data from existing VPC in the region in use
# data "aws_vpc" "existing_vpc" {
#   default = true
# }

# Fetch data from existing VPC
data "aws_vpc" "existing_vpc" {
  cidr_block = "10.10.0.0/16"
}

# Now Use the fetched data to create required resources
resource "aws_subnet" "dev-repo" {
  vpc_id            = data.aws_vpc.existing_vpc.id
  cidr_block        = "10.10.40.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name : "dev-repo"
  }
}
