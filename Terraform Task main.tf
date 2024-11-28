# Define the MongoDB Atlas Provider
terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
  required_version = ">= 0.13"
}

provider "mongodbatlas" {
  public_key  = var.MONGODB_ATLAS_PUBLIC_KEY
  private_key = var.MONGODB_ATLAS_PRIVATE_KEY
}


# Create a Project
resource "mongodbatlas_project" "myproject" {
  name        = "My Project"
  org_id      = var.MONGODB_ATLAS_ORGANIZATION_ID
}


# Create an Atlas Cluster
#resource "mongodbatlas_cluster" "mycluster" {
  # Uncomment block and write code there
#}


# Create a Database User
#resource "mongodbatlas_database_user" "bob" {
  # Uncomment block and write code there
#}


# Open up your IP Access List to all, but this comes with significant potential risk.
#locals {

#  cidr_block_list = [
    # Uncomment block and write code there
#  ]
#}

#resource "mongodbatlas_project_ip_access_list" "cidr" {
  # Uncomment block and write code there
#}