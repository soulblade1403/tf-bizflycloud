#!make

.PHONY: all init plan apply destroy help
SHELL := /bin/bash

help:              ### Show this help.
		@fgrep -h "###" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/###//'

init:              ### Terraform init provider
	terraform init


plan:              ### Terraform plan
	terraform plan -var-file=vars/terraform.tfvars

apply:             ### Terraform apply
	terraform apply -var-file=vars/terraform.tfvars -auto-approve

destroy:           ### Terraform destroy based on plan file
	terraform plan -destroy -var-file=vars/terraform.tfvars -out=terraform.tfplan; \
	terraform apply terraform.tfplan

all: help