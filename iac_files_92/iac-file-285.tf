resource "aws_mq_broker" "allowed" {
  engine_type        = "ActiveMQ"
  engine_version     = "5.15.0"
  host_instance_type = "mq.t2.micro"
  broker_name        = "example"

  user {
    username = "test"
    password = "why-is-this-requied-field-is-beyond-me"
  }

  security_groups = ["id-xxx"]
  logs {
    general = true
  }
}

resource "aws_mq_broker" "denied" {
  engine_type        = "ActiveMQ"
  engine_version     = "5.15.0"
  host_instance_type = "mq.t2.micro"
  broker_name        = "example"
  user {
    username = "test"
    password = "why-is-this-requied-field-is-beyond-me"
  }
  security_groups = ["id-xxx"]
}

resource "aws_mq_broker" "denied_2" {
  engine_type        = "ActiveMQ"
  engine_version     = "5.15.0"
  host_instance_type = "mq.t2.micro"
  broker_name        = "example"
  user {
    username = "test"
    password = "why-is-this-requied-field-is-beyond-me"
  }
  security_groups = ["id-xxx"]
  logs {
  }
}

resource "aws_mq_broker" "denied_3" {
  engine_type        = "ActiveMQ"
  engine_version     = "5.15.0"
  host_instance_type = "mq.t2.micro"
  broker_name        = "example"
  security_groups    = ["id-xxx"]
  user {
    username = "test"
    password = "why-is-this-requied-field-is-beyond-me"
  }
  logs {
    general = false
  }
}
