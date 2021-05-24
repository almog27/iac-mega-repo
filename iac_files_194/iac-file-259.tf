resource "aws_docdb_cluster" "allowed" {
  enabled_cloudwatch_logs_exports = ["profiler", "audit"]
}

resource "aws_docdb_cluster" "denied" {
  enabled_cloudwatch_logs_exports = ["profiler"]
}

resource "aws_docdb_cluster" "denied_2" {
  enabled_cloudwatch_logs_exports = ["audit"]
}

resource "aws_docdb_cluster" "denied_3" {
}

resource "aws_docdb_cluster" "denied_4" {
  enabled_cloudwatch_logs_exports = []
}
