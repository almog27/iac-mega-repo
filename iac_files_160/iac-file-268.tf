resource "aws_ecs_cluster" "allowed" {
  name = "test"
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
