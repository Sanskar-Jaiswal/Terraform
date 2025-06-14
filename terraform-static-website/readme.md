# 🌐 Terraform Project: Static Website Hosting on AWS S3

This project demonstrates how to deploy a static website on AWS using Terraform. It provisions an S3 bucket, enables static website hosting, uploads a basic HTML file, and makes the website publicly accessible.

---

## ✅ Features

- Creates an S3 bucket for hosting a static website
- Uploads an `index.html` file automatically
- Applies a public-read bucket policy
- Outputs the public website URL after deployment

---

## 📁 Project Structure

terraform-static-website/
├── main.tf # Main Terraform config
├── variables.tf # Input variable definitions
├── terraform.tfvars # Variable values
├── outputs.tf # Output variables (like website URL)
├── index.html # Your static website homepage
└── README.md # Project documentation



---

## 🛠️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) (configured with `aws configure`)
- An AWS account with permissions to manage S3

---

## ⚙️ Setup Instructions

### 1. Clone this Repository

```bash
git clone https://github.com/yourusername/terraform-static-website.git
cd terraform-static-website
2. Set Bucket Name in terraform.tfvars
Edit the terraform.tfvars file and set a unique S3 bucket name:


bucket_name = "your-unique-s3-bucket-name"
3. Initialize Terraform

terraform init
4. Preview and Apply

terraform plan
terraform apply
Type yes when prompted.

🌍 Output
After applying, Terraform will output the public URL of your website:


Outputs:

website_url = "http://your-bucket-name.s3-website-us-east-1.amazonaws.com"
Visit the URL in your browser 🚀

🧹 Clean Up
To delete all resources created by Terraform:


terraform destroy
📚 What You’ll Learn
Basics of Terraform syntax and workflow

AWS S3 resource provisioning

Managing files with aws_s3_object

Bucket policies and public access control

Using outputs and variables in Terraform

👨‍💻 Author
Sanskar Jaiswal
DevOps Enthusiast | Cloud Practitioner
LinkedIn • GitHub

📄 License
This project is open-source and available under the MIT License.



---



