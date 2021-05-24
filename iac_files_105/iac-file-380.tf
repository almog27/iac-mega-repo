data "azurerm_storage_account_sas" "allowed" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  start             = "2018-03-21"
  expiry            = "2020-03-21"

  resource_types {
    service   = true
    container = false
    object    = false
  }

  services {
    blob  = true
    queue = false
    table = false
    file  = false
  }

  https_only = true

  permissions {
    read    = true
    write   = true
    delete  = false
    list    = false
    add     = true
    create  = true
    update  = false
    process = false
  }
}

data "azurerm_storage_account_sas" "allowed_2" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"

  start  = "2018-03-21"
  expiry = "2020-03-21"

  resource_types {
    service   = true
    container = false
    object    = false
  }

  services {
    blob  = true
    queue = false
    table = false
    file  = false
  }
  permissions {
    read    = true
    write   = true
    delete  = false
    list    = false
    add     = true
    create  = true
    update  = false
    process = false
  }
}

data "azurerm_storage_account_sas" "denied" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  start             = "2018-03-21"
  expiry            = "2020-03-21"
  https_only        = false

  resource_types {
    service   = true
    container = false
    object    = false
  }

  services {
    blob  = true
    queue = false
    table = false
    file  = false
  }
  permissions {
    read    = true
    write   = true
    delete  = false
    list    = false
    add     = true
    create  = true
    update  = false
    process = false
  }
}
