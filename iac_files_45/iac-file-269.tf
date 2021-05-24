resource "aws_ecs_cluster" "denied" {
  name = "test"
}

resource "aws_ecs_cluster" "denied_2" {

  name = "test"
  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "denied_3" {

  name = "test"
  setting {
    name  = "containerInsights"
    value = "disabled"
  }

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
