# _Terragrunt_ State

_Terraform_ files to create _Terragrunt_ lock and state _AWS_ resources.

## Usage

Run `terraform` plan and apply:

```shell
terraform plan
terraform apply
```

Configure manually remote _S3_ bucket state:

```
terraform remote config \
    -backend=s3 \
    -backend-config="bucket=${var.name}.state" \
    -backend-config="key=state.tfstate" \
    -backend-config="region=eu-west-1" \
    -backend-config="encrypt=true"
```

Push remote state to _S3_ bucket:

```shell
terraform remote push
```
