resource "aws_msk_cluster" "allowed" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }


  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = true
      }
    }
  }
}

resource "aws_msk_cluster" "allowed_2" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
      firehose {
        enabled = true
      }
    }
  }
}

resource "aws_msk_cluster" "allowed_3" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
      s3 {
        enabled = true
      }
    }
  }
}

resource "aws_msk_cluster" "allowed_4" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = false
      }
      s3 {
        enabled = true
      }
    }
  }
}

resource "aws_msk_cluster" "denied" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

}


resource "aws_msk_cluster" "denied_2" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = false
      }
    }
  }
}

resource "aws_msk_cluster" "denied_3" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
      firehose {
        enabled = false
      }
    }
  }
}

resource "aws_msk_cluster" "denied_4" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
      s3 {
        enabled = false
      }
    }
  }
}

resource "aws_msk_cluster" "denied_5" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = false
      }
    }
  }
}

resource "aws_msk_cluster" "denied_6" {
  cluster_name           = "example"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = "kafka.m5.large"
    ebs_volume_size = 1000
    client_subnets = [
      "id-xxxx"
    ]
    security_groups = ["id-yyyy"]
  }

  logging_info {
    broker_logs {
    }
  }
}


