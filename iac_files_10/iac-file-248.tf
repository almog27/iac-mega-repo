resource "aws_athena_workgroup" "denied" {
  name = "test"
  configuration {
    enforce_workgroup_configuration = false
  }
}
