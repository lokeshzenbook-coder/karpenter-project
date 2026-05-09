Production-Grade End-to-End Karpenter Project on AWS EKS

This project includes:
Terraform EKS provisioning
VPC setup
IAM + IRSA
Karpenter installation
NodePools
EC2NodeClasses
Spot + On-Demand autoscaling
GitHub Actions CI/CD
Monitoring
Security best practices
Production-grade architecture

Project Architecture

GitHub Actions
       ↓
Terraform Apply
       ↓
AWS Infrastructure
       ↓
EKS Cluster
       ↓
Managed Node Group
       ↓
Karpenter Controller
       ↓
Dynamic EC2 Nodes
       ↓
Applications

Complete Folder Structure

karpenter-platform/
│
├── terraform/
│   ├── backend.tf
│   ├── provider.tf
│   ├── versions.tf
│   ├── variables.tf
│   ├── eks.tf
│   ├── vpc.tf
│   ├── iam.tf
│   ├── karpenter.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
├── kubernetes/
│   ├── ec2nodeclass.yaml
│   ├── nodepool.yaml
│   └── inflate.yaml
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
└── README.md


