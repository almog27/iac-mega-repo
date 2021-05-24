resource "google_app_engine_standard_app_version" "allowed" {
  version_id = "v1"
  service    = "myapp"
  runtime    = "nodejs10"

  entrypoint {
    shell = "node ./app.js"
  }

  deployment {
    files {
      name       = "test"
      source_url = "https://storage.googleapis.com/test"

    }

  }
  handlers {
    security_level = "SECURE_ALWAYS"
  }

}

resource "google_app_engine_standard_app_version" "denied" {
  version_id = "v1"
  service    = "myapp"
  runtime    = "nodejs10"

  entrypoint {
    shell = "node ./app.js"
  }

  deployment {
    files {
      name       = "test"
      source_url = "https://storage.googleapis.com/test"

    }

  }
}

resource "google_app_engine_standard_app_version" "denied_2" {
  version_id = "v1"
  service    = "myapp"
  runtime    = "nodejs10"

  entrypoint {
    shell = "node ./app.js"
  }

  deployment {
    files {
      name       = "test"
      source_url = "https://storage.googleapis.com/test"

    }

  }

  handlers {
    security_level = "SECURE_NEVER"
  }
}

resource "google_app_engine_standard_app_version" "denied_3" {
  version_id = "v1"
  service    = "myapp"
  runtime    = "nodejs10"

  entrypoint {
    shell = "node ./app.js"
  }

  deployment {
    files {
      name       = "test"
      source_url = "https://storage.googleapis.com/test"

    }

  }

  handlers {
    url_regex      = "/test/*"
    security_level = "SECURE_ALWAYS"
  }

  handlers {
    url_regex      = "/prod/*"
    security_level = "SECURE_NEVER"
  }
}
