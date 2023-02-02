module "aftsandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "gabriel.guiridlian@gainwelltechnologies.com"
    AccountName               = "aftsandboxtest"
    ManagedOrganizationalUnit = "GWT-AWS-PRODENG-GBL-OU-SANDBOX"
    SSOUserEmail              = "gabriel.guiridlian@gainwelltechnologies.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}