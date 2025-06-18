dev-apply:
     rm -rf .terraform/terraform.tfstate
     terraform init -backend-config=env-dev/state.tfvars
     terraform apply -var-file=env-dev/devmain.tfvars -auto-approve
dev-destroy:
     rm -rf .terraform/terraform.tfstate
     terraform init -backend-config=env-dev/state.tfvars
     terraform destroy -var-file=env-dev/devmain.tfvars -auto-approve

prod-apply:
     rm -rf .terraform/terraform.tfstate
     terraform init -backend-config=env-prod/state.tfvars
     terraform apply -var-file=env-prod/prodmain.tfvars -auto-approve
prod-destroy:
     rm -rf .terraform/terraform.tfstate
     terraform init -backend-config=env-prod/state.tfvars
     terraform apply -var-file=env-prod/prodmain.tfvars -auto-approve