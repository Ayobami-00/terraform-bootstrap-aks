# Terraform Bootstrap Infrastructure (AKS)

This repository contains Terraform configurations for setting up the necessary infrastructure to manage Terraform state files in an Azure environment tailored for AKS. It provisions an Azure Storage Account with a blob container to store state files—leveraging Azure's native state locking.

## Project Structure

```
bootstrap/
└── backend/
    ├── modules/
    │   └── aks/
    │       ├── compute/
    │       │   └── aks_resource_group/
    │       │       ├── aks_resource_group.tf
    │       │       ├── outputs.tf
    │       │       └── variables.tf
    │       └── storage/
    │           ├── storage_account/
    │           │   ├── main.tf
    │           │   └── variables.tf
    │           └── storage_container/
    │               ├── main.tf
    │               └── variables.tf
    ├── main.tf
    ├── terraform.tf
    ├── terraform.tfvars
    └── variables.tf
├── Makefile
```

## Purpose

The Terraform configuration sets up:
- An Azure Resource Group for organizing AKS-related resources
- An Azure Storage Account for storing Terraform state files
- A Storage Container (Blob) for organizing state files
- Built-in state locking using Azure's native capabilities

## Module Details

### AKS Resource Group Module
Located in `modules/aks/compute/aks_resource_group/`
- **aks_resource_group.tf**: Creates the Azure Resource Group
- **outputs.tf**: Exposes resource group ID and name
- **variables.tf**: Defines required variables:
  - `aks_resource_group_name`: Name of the resource group
  - `aks_location`: Azure region for deployment

### Storage Modules
Located in `modules/aks/storage/`
- **storage_account**: Provisions an Azure Storage Account
- **storage_container**: Creates a blob container within the storage account

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) v1.0 or later
- Azure CLI installed and configured
- Azure subscription with appropriate permissions

### Configuration

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/your-username/terraform-bootstrap-aks.git
    cd terraform-bootstrap-aks
    ```

2. **Update Variables**:
    - Open `terraform.tfvars` and set the appropriate values:
      ```hcl
      aks_resource_group_name = "your-resource-group-name"
      aks_location = "your-azure-region"
      storage_account_name = "your-storage-account-name"
      container_name = "your-container-name"
      subscription_id = "your-subscription-id"
      ```

3. **Initialize Terraform**:
    ```bash
    cd bootstrap/backend
    terraform init
    ```

4. **Apply the Configuration**:
    ```bash
    terraform apply
    ```

## Notes

- Ensure your Azure credentials have the necessary permissions
- The storage account name must be globally unique across Azure
- The configuration uses Azure RM provider version ~> 4.0 and Azure AD provider version ~> 3.0
- Resource group outputs include both ID and name for flexible referencing

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
