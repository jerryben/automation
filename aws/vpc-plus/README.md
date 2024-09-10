# AWS Terraform VPC | Subnet | IGW | RTB | SG | Instance with Script Setup

This branch contains Terraform scripts for setting up AWS infrastructure including VPC, subnets, internet gateway, route tables, security groups, VM instances, and the initial startup script to run on the VM. The goal is to automate the deployment of a network environment in AWS with proper security measures and access configurations.

## Project Structure
```
automation
└── AWS
   └── vpc-plus
      ├── main.tf
      ├── variables.tf
      ├── outputs.tf
      ├── scripts
      ├──startup.sh
      └── README.md
```

## Features

- **VPC Creation**: Creates a VPC with a custom CIDR block.
- **Subnet Configuration**: Sets up public and private subnets within the VPC.
- **Internet Gateway**: Attaches an internet gateway to the VPC for internet access.
- **Route Tables**: Configures route tables to direct traffic appropriately.
- **Security Groups**: Creates security groups with specific rules for SSH and HTTP access.
- **VM Instances**: Deploys EC2 instances with a public SSH key for secure access.
- **Startup Script**: Executes a startup script on instance launch to set up the nginx necessary environment.

## Getting Started

### Prerequisites

- AWS account with necessary permissions
- Terraform installed locally
- SSH key pair generated for instance access

### Usage

1. Clone the repository and switch to the `aws-terraform-vpc-setup` branch.

   ```bash
   git clone https://github.com/yourusername/automation.git
   cd automation/AWS/aws-terraform-vpc-setup
   ```

2. Initialize Terraform.

   ```bash
   terraform init
   ```

3. Plan and apply the configuration.

   ```bash
   terraform plan
   terraform apply
   ```

4. Follow the prompts to confirm changes.

## Clean Up

To avoid unnecessary charges, remember to destroy the created infrastructure when done:

```bash
terraform destroy
```
License
This project is licensed under the MIT License - see the LICENSE file for details.

