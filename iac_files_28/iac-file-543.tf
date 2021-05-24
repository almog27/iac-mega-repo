provider "aws" {
  region = "eu-west-1"
}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
provider "google" {
  project = "my-project-id"
  region  = "us-central1"
}
