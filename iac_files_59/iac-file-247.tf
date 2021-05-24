resource "aws_athena_workgroup" "allowed" {
  name = "test"
}

resource "aws_athena_workgroup" "allowed_2" {
  name = "test"
  configuration {}
}

resource "aws_athena_workgroup" "allowed_3" {
  name = "test"
  configuration {
    enforce_workgroup_configuration = true
  }
}
