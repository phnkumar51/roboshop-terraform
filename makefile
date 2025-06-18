dev-apply:
       rm -f .terraform/terraform.tfstate
       terraform init -backend-config=env-dev/state.tfvars
       terraform apply -var-file=env-dev/devmain.tfvars
dev-destroy:
        rm -f .terraform/terraform.tfstate
        terraform init -backend-config=env-dev/state.tfvars
        terraform destroy -var-file=env-dev/devmain.tfvars

prod-apply:
        rm -f .terraform/terraform.tfstate
        terraform init -backend-config=env-prod/state.tfvars
        terraform apply -var-file=env-prod/prodmain.tfvars
prod-destroy:
        rm -f .terraform/terraform.tfstate
        terraform init -backend-config=env-prod/state.tfvars
        terraform apply -var-file=env-prod/prodmain.tfvars