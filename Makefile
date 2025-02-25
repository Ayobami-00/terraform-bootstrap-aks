ENVIRONMENT ?= dev
COMPANY_NAME ?= mycompany

STORAGE_ACCOUNT_NAME = $(COMPANY_NAME)$(ENVIRONMENT)storage
STORAGE_CONTAINER_NAME = tfstatefiles
SUBSCRIPTION_ID = "45678901-2345-6789-0123-456789012345" # REPLACE WITH YOUR SUBSCRIPTION ID
AKS_RESOURCE_GROUP_NAME = $(COMPANY_NAME)-$(ENVIRONMENT)-aks-resource-group
AKS_LOCATION = westus

bootstrap-backend:
	cd bootstrap/backend && \
	terraform init && \
	terraform apply -var="subscription_id=$(SUBSCRIPTION_ID)" \
		-var="storage_account_name=$(STORAGE_ACCOUNT_NAME)" \
		-var="container_name=$(STORAGE_CONTAINER_NAME)" \
		-var="aks_resource_group_name=$(AKS_RESOURCE_GROUP_NAME)" \
		-var="aks_location=$(AKS_LOCATION)" \
		-auto-approve && \
	rm -rf .terraform* && \
	rm -rf terraform.tfstate*