# learning-terraform
Examples and code to help with learning Terraform.

## Setting up
1. Make sure you have `terraform` installed on your device. Brew has it: 
`brew install terraform`
2. If needed, run `terraform init` to initialize the dependency lock file.
3. You will need your AWS command line setup with proper credentials. For use
in this example will just reccomend you set your environmental variables with
the following commands (your values and region passed in).

```bash
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_REGION="us-west-2"
```
4. Now you can confirm everything is ready to be created by running:
`terraform plan'. Output should look something like: 

```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.first_bucket will be created
  + resource "aws_s3_bucket" "first_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "first_bucket_david"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.
```
5. Now run `terraform apply` to create your resources.

## About files included
* `main.tf` - This is the file where the actual infrastructure is defined.

* The `.terraform.lock.hcl` file includes what version of the provider was used
when the terraform file was created via `terraform init`. As providers APIs can
change and the terraform template could then become unsable this gives us a way
to make sure it does work until we are ready to upgrade the version for the
provider. Alternatively the version of the provider can be defined in the
terraform template. 




