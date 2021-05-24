resource "aws_msk_cluster" "default" {
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

resource "aws_msk_cluster" "client_tls" {
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
  encryption_info {
    encryption_in_transit {
      client_broker = "TLS"
    }
  }
}

resource "aws_msk_cluster" "tls" {
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
  encryption_info {
  }
}

resource "aws_msk_cluster" "in_cluster_tls" {
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
  encryption_info {
    encryption_in_transit {
      in_cluster = true
    }
  }
}



