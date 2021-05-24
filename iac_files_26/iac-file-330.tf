data "azurerm_subscription" "primary" {
}

resource "azurerm_role_definition" "denied" {
  name        = "my-custom-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"
  permissions {
    actions     = ["*"]
    not_actions = []
  }
  assignable_scopes = ["/"]
}

resource "azurerm_role_definition" "denied_2" {
  name        = "my-custom-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"
  permissions {
    actions     = ["*"]
    not_actions = []
  }
  assignable_scopes = ["/subscriptions/test"]
}

resource "azurerm_role_definition" "denied_3" {
  name        = "my-custom-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"
  permissions {
    actions     = ["*"]
    not_actions = []
  }
  assignable_scopes = [
    "/subscriptions/test",
    "/"
  ]
}


resource "azurerm_role_definition" "denied_4" {
  name        = "my-custom-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"
  permissions {
    actions     = ["*"]
    not_actions = []
  }
  assignable_scopes = [
    "/something/else",
    "/"
  ]
}

resource "azurerm_role_definition" "allowed" {
  name        = "my-custom-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"
  permissions {
    actions     = ["Microsoft.Storage/storageAccounts/blobServices/containers/read"]
    not_actions = []
  }
  assignable_scopes = ["/"]
}

resource "azurerm_role_definition" "allowed_2" {
  name        = "my-custom-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"
  permissions {
    actions     = ["*"]
    not_actions = []
  }
  assignable_scopes = ["/only/me"]
}
