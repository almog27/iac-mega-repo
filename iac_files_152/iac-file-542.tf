provider "aws" {
  alias      = "prod"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

# Should not match google provider
provider "google" {
  alias      = "dev"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
