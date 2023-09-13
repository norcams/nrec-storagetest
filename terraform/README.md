## Terraform examples

## Variables

All variables in `variables.tf` can be overwritten on the commandline or in
`.tfvars` files.

To use the same `terraform.tfvars` in mulitple regions run terraform
with `-var 'region=<region>`.

### Simple test

Copy and edit `test.tfvars.example` to `terrraform.tfvars` and run:

``` bash
terraform init
terraform apply
terraform output -raw ansible_inventory_v6 > ../ansible/inventory
```

### Test with mulitiple nodes

Create multiple `<testname>.tfvars` files and terraform workspaces.

Create the first test

``` bash
terraform workspace new test1
terraform init
terraform apply --var-files test1.tfvars
terraform output -raw ansible_inventory_v6 > ../ansible/inventory
```
and a new test2

``` bash
terraform workspace new test2
terraform init
terraform apply --var-files test2.tfvars
terraform output -raw ansible_inventory_v6 > ../ansible/inventory
```

Rerun test1:

``` bash
terraform workspace select test1
terraform apply --var-files test1.tfvars
terraform output -raw ansible_inventory_v6 > ../ansible/inventory
```


