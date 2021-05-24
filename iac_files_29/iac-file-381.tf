data "azurerm_storage_account_sas" "allowed" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00Z"
  expiry = "2020-01-01T01:00:00Z"
}

data "azurerm_storage_account_sas" "allowed_2" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00Z"
  expiry = "2020-01-01T00:30:00Z"
}

data "azurerm_storage_account_sas" "allowed_3" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00Z"
  expiry = "2020-01-01T00:59:59Z"
}

data "azurerm_storage_account_sas" "allowed_4" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00"
  expiry = "2020-01-01T01:00:00"
}

data "azurerm_storage_account_sas" "allowed_5" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "20200101T000000"
  expiry = "20200101T010000"
}

data "azurerm_storage_account_sas" "denied" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01"
  expiry = "2020-01-02"
}

data "azurerm_storage_account_sas" "denied_2" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00Z"
  expiry = "2020-01-01T01:00:01Z"
}

data "azurerm_storage_account_sas" "denied_3" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00Z"
  expiry = "2020-01-01T01:30:01Z"
}

data "azurerm_storage_account_sas" "denied_4" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00Z"
  expiry = "2020-01-01T01:30:01Z"
}

data "azurerm_storage_account_sas" "denied_5" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "2020-01-01T00:00:00"
  expiry = "2020-01-01T01:00:01"
}

data "azurerm_storage_account_sas" "denied_6" {
  connection_string = "Microsoft.Azure.Commands.Sql.SecureConnection.Model.ConnectionStrings"
  https_only        = true
  signed_version    = "2017-07-29"

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
  start  = "20200101T000000"
  expiry = "20200101T010001"
}
