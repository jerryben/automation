terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }
}

provider "google" {
  #credentials = file("<path-to-your-service-account-json>") # Optional if using gcloud auth
  project = "supple-nature-430608-h9"
  region  = "us-central1"   # Replace with your desired region
  zone    = "us-central1-c" # Replace with your desired zone
}


# Fetch the existing VPC
data "google_compute_network" "vpc_network" {
  name = "hipaa-vpc" # Replace with the name of your VPC
}

# Fetch details of the subnets within the VPC
data "google_compute_subnetwork" "subnet1" {
  name   = "hippa-frontend" # Replace with the name of the first subnet
  region = "us-central1"    # Replace with the correct region of the subnet

}

data "google_compute_subnetwork" "subnet2" {
  name   = "hipaa-backend" # Replace with the name of the second subnet
  region = "us-central1"   # Replace with the correct region of the subnet

}

# Fetch details of the first virtual machine
data "google_compute_instance" "vm1" {
  name = "hipaa-frontend-vm" # Replace with the name of the first VM
  zone = "us-central1-c"     # Replace with the correct zone of the VM
}

# Fetch details of the second virtual machine
data "google_compute_instance" "vm2" {
  name = "hipaa-backend-vm" # Replace with the name of the second VM
  zone = "us-central1-f"    # Replace with the correct zone of the VM
}


# Fetch details of the MySQL managed database
data "google_sql_database_instance" "mysql_db" {
  name    = "hipaa-database"          # Replace with the MySQL instance name
  project = "supple-nature-430608-h9" # Ensure this matches your project ID
}


# Output VPC and subnets details
output "vpc_network_info" {
  value = data.google_compute_network.vpc_network
}

output "subnet1_info" {
  value = data.google_compute_subnetwork.subnet1
}

output "subnet2_info" {
  value = data.google_compute_subnetwork.subnet2
}

# Output VM details
output "vm1_info" {
  value = data.google_compute_instance.vm1
}

output "vm2_info" {
  value = data.google_compute_instance.vm2
}

# Output MySQL database details
output "mysql_db_info" {
  value = data.google_sql_database_instance.mysql_db
}
