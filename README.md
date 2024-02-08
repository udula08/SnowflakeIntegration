# Terraform-Snowflake Integration

## Prerequisites

- Terraform installed (https://developer.hashicorp.com/terraform/install)
- Snowflake account (https://signup.snowflake.com/)

## To use this model

1. Clone this repository.
2. Find your snowflake configuration details in your welcome email form snowflake.
3. Modify `terraform.tfvars` and `variables.tf` files as applicable.
4. Run `terraform init` to initialize the Terraform configuration.
5. Run `terraform plan` to check the changes.
6. Run `terraform apply` to apply the changes.


## More on snowflake

Below codes can be used to find details of the current user.

```sql
select current_user();

select current_account();

select current_region();

select current_role ();

show grants to role your_role_name;
```

## Challenges

1. Unable to do the task locally due to below error. 'wsarecv: An existing connection was forcibly closed by the remote'.