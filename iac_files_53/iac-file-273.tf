resource "aws_elasticsearch_domain" "allowed" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }
  log_publishing_options {
    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"
    log_type                 = "INDEX_SLOW_LOGS"
  }
}

resource "aws_elasticsearch_domain" "allowed_2" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }
  log_publishing_options {

    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"

    log_type = "INDEX_SLOW_LOGS"
    enabled  = true
  }
}

resource "aws_elasticsearch_domain" "allowed_3" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }
  log_publishing_options {

    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"

    log_type = "INDEX_SLOW_LOGS"
    enabled  = false
  }

  log_publishing_options {

    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"

    log_type = "INDEX_SLOW_LOGS"
    enabled  = true
  }
}

resource "aws_elasticsearch_domain" "allowed_4" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }
  log_publishing_options {

    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"

    log_type = "INDEX_SLOW_LOGS"
    enabled  = false
  }

  log_publishing_options {

    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"

    log_type = "INDEX_SLOW_LOGS"
    enabled  = false
  }

  log_publishing_options {

    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"

    log_type = "INDEX_SLOW_LOGS"
  }
}

resource "aws_elasticsearch_domain" "denied" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }
  log_publishing_options {

    cloudwatch_log_group_arn = "arn:aws:iam::123456789012:user"

    log_type = "INDEX_SLOW_LOGS"
    enabled  = false
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }
}


