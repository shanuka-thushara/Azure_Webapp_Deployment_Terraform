# Azure_Webapp_Deployment_Terraform
A completely managed platform for creating, launching, and growing online applications is Azure online Apps. You can enable continuous deployment (CD) for your application and simplify infrastructure management by connecting it with a GitHub repository and deploying it using Terraform.

# Prerequisites
1. An active [Azure subscription](https://azure.microsoft.com/en-us/free/).
2. A GitHub account with a repository containing your application code.
3. Terraform installed locally.

# Steps to Deploy
### 1. Set Up Terraform
1. Install Terraform by following the [official guide](https://developer.hashicorp.com/terraform/downloads).
2. Authenticate Terraform with your Azure subscription using the Azure CLI:
   ```bash
   az login
   az account set --subscription <your-subscription-id>
   ```
### 2. Create Terraform Configuration File
Create a file named `main.tf` and add the following content:
