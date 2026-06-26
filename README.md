## Terraform Project-
 Terraform AWS EC2 Infrastructure with Security Groups & Remote State Management (S3,DynamoDB)

## Overview
 This project demonstrates Infrastructure as Code (IaC) using Terraform on AWS.It provides and manages cloud 
 infrastructure automated way by reducing manual configuration and improving scalability.The infrastructure includes 
 EC2 instance provisioning, Security Group configuration to control inbound and outbound traffic. Remote Terraform 
 state storage is build using Amazon S3. State locking is managed using DynamoDB to prevent simultaneous updates.
 The entire infrastructure deployment is version-controlled for better tracking and collaboration.

## Architecture
                                    Developer Machine
                                           ↓ 
                                      Terraform 
                                           ↓
                                     AWS Provider
                                           ↓
                                       AWS Cloud
                                           ↓
                           (EC2 instance)-----(Security Group) 
                                     ↓     
                            Remote State Management      
                                     ↓ 
                                 S3 Bucket
                                     ↓ 
                               DynamoDB Table

## Project Structure
 
terraform-ec2-remote/
│
├── main.tf          # EC2 instance + Security Group
├── variables.tf     # Input variables
├── outputs.tf       # Output values
├── provider.tf      # AWS provider configuration
├── backend.tf       # Remote state (S3 + DynamoDB)
├── .gitignore       # Files to ignore in Git (state files, logs, etc.)
└── README.md        # Project Overview


## Tools & Cloud Services Used
 - Terraform
 - Git & GitHub
 - VS Code
 - EC2
 - Security Groups
 - S3 Bucket
 - DynamoDB

## Key Features
 - Infrastructure as Code using Terraform
 - Automated EC2 provisioning on AWS
 - Secure networking using Security Groups
 - Remote State Management using S3
 - State locking using DynamoDB
 - Version-controlled infrastructure setup

## Workflow
 - Write Terraform configuration files
 - Terraform initiates AWS provider
 - Infrastructure is planned and applied
 - AWS resources are provisioned
 - Terraform state is stored in S3
 - DynamoDB ensures safe locking during updates

## Screenshots
 - 

## Key Learnings
 - Basics of Infrastructure as Code (IaC) using Terraform
 - How to create AWS resources like EC2, Security Group, S3, DynamoDB
 - Understanding remote state storage using S3
 - Learning state locking with DynamoDB 
 - Basics of cloud infrastructure deployment using AWS
 - Importance of automation in Devops workflows.

## S


