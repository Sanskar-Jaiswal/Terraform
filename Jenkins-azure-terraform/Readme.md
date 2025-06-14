# CI/CD Pipeline Setup using Terraform + Jenkins on Azure

## 📘 Project Overview

This project demonstrates how to provision a complete CI/CD setup on Azure using **Terraform**. It includes:
- Deploying a **Jenkins server** on an Azure Virtual Machine
- Securing the server with **NSG rules**
- Installing Jenkins using a **bootstrap script**
- Storing the Terraform state in **Azure Storage Account**
- Optional: Connecting **GitHub Webhooks** or **Azure DevOps** for CI/CD automation

---

## 📌 Architecture

+-----------------+ +-----------------+
| Terraform | | Azure Cloud |
| (local or TFC) | +-----------------+
+--------+--------+ |
| |
v v
+-------------------------------+
| Azure Resource Group |
+-------------------------------+
|
+-------------------------------+
| Virtual Network |
| - Subnet |
| - Network Security Group |
+-------------------------------+
|
+-------------------------------+
| Jenkins VM (Ubuntu) |
| - Public IP |
| - Jenkins installed via |
| remote-exec/provisioner |
+-------------------------------+


---

## 🧰 Tech Stack

- **Terraform v1.x**
- **Azure Provider**
- **Azure VM (Ubuntu 22.04 LTS)**
- **Azure Storage Account** (for remote backend)
- **Jenkins (LTS)**
- Optional: GitHub / Azure DevOps integration

---

## ✅ Prerequisites

- Azure subscription
- Azure CLI installed and authenticated
- Terraform installed (`>= v1.2.0`)
- SSH key pair (public and private)
- GitHub account (for webhook/CI-CD part)

---

## 📁 Project Structure

jenkins-azure-terraform/
├── main.tf # Main configuration
├── variables.tf # All input variables
├── outputs.tf # Useful outputs (IP, etc.)
├── provider.tf # Azure provider + backend config
├── jenkins-install.sh # Bootstrap script for Jenkins
├── terraform.tfvars # Variable values
└── README.md # Documentation
