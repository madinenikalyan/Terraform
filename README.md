# Terraform Execution Steps

Export AWS IAM user credentials

export AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID>
export AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY>

Run the following terraform commands

Terraform init
terraform plan --var-file <tfvar file name> 
terraform apply --var-file <tfvar file name>  --auto-approve
