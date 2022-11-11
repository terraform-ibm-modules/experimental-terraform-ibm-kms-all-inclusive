terraform {
  required_version = ">= 1.0.0"
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      # Use "greater than or equal to" range in modules
      version = ">= 1.45.0"
    }
    # ignore linter error, restapi provider needed for key-protect-module/aliases when consuming key-protect-all-inclusive-module
    # tflint-ignore: terraform_unused_required_providers
    restapi = {
      source  = "Mastercard/restapi"
      version = ">= 1.17.0"
    }
  }
}