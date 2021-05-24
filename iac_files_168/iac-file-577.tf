resource "google_compute_instance" "boot_disk_allow_1" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  boot_disk {
    disk_encryption_key_raw = "test_dummy_key"
  }
}

resource "google_compute_instance" "boot_disk_allow_2" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  boot_disk {
    kms_key_self_link = "test_dummy_key"
  }
}

resource "google_compute_instance" "boot_disk_deny_1" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}

resource "google_compute_instance" "attached_disk_allow_1" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  tags = ["foo", "bar"]

  boot_disk {
    disk_encryption_key_raw = "test_dummy_key"
  }

  attached_disk {
    source                  = "dummy_source"
    disk_encryption_key_raw = "test_dummy_key"
  }
}

resource "google_compute_instance" "attached_disk_allow_2" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  boot_disk {
    disk_encryption_key_raw = "test_dummy_key"
  }

  attached_disk {
    source            = "dummy_source"
    kms_key_self_link = "test_dummy_key"
  }
}

resource "google_compute_instance" "attached_disk_deny_1" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  boot_disk {
    disk_encryption_key_raw = "test_dummy_key"
  }

  attached_disk {
    source = "dummy_source"
  }
}

resource "google_compute_instance" "attached_disk_deny_2" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  boot_disk {
    disk_encryption_key_raw = "test_dummy_key"
  }

  attached_disk {
    source = "dummy_source"
  }

  attached_disk {
    source = "dummy_source2"
  }
}
