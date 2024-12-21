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
Create a file named `main.tf` and include the following configuration:
### 3. Initialize Terraform
Run the following commands to initialize Terraform and deploy the resources:

```bash
terraform init
terraform plan
terraform apply
```

Type `yes` when prompted to confirm the deployment.

### 4. Verify Deployment

1. Navigate to the Azure Portal.
2. Open the Web App under **App Services** and verify the deployment.
3. Access the app using the provided URL.

## Continuous Deployment

The GitHub repository is now linked to the Azure Web App. Any changes pushed to the specified branch will automatically deploy to Azure.

## Troubleshooting

- **Terraform Errors**: Ensure your `main.tf` file is properly formatted and all required fields are provided.
- **Deployment Failures**: Check the Azure Web App logs and Terraform output for errors.
- **GitHub Authentication**: Ensure the GitHub personal access token has the required permissions for the repository.

## Resources

- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Azure Web Apps Documentation](https://learn.microsoft.com/en-us/azure/app-service/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

---

## Resources

- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Azure Web Apps](https://learn.microsoft.com/en-us/azure/app-service/)

---

Happy Coding! 🎉
```
