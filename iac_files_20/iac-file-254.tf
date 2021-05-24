resource "aws_codebuild_project" "denied" {
  name = "some-name"
  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/standard:2.0"
    type         = "LINUX_CONTAINER"
  }
  service_role = "arn:aws:iam::123456789012:root"
  source {
    type = "CODECOMMIT"
  }
  artifacts {
    type                = "S3"
    encryption_disabled = true
  }
}

resource "aws_codebuild_project" "denied_3" {
  name = "some-name"
  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/standard:2.0"
    type         = "LINUX_CONTAINER"
  }

  service_role = "arn:aws:iam::123456789012:root"
  source {
    type = "CODECOMMIT"
  }
  artifacts {
    type = "CODEPIPELINE"
  }

  secondary_artifacts {
    artifact_identifier = "some-id"
    type                = "S3"
    encryption_disabled = true
  }
}

resource "aws_codebuild_project" "denied_4" {
  name = "some-name"
  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/standard:2.0"
    type         = "LINUX_CONTAINER"
  }

  service_role = "arn:aws:iam::123456789012:root"
  source {
    type = "CODECOMMIT"
  }
  artifacts {
    type = "CODEPIPELINE"
  }

  secondary_artifacts {
    artifact_identifier = "some-id"
    type                = "S3"
    encryption_disabled = true
  }
}

resource "aws_codebuild_project" "denied_5" {
  name = "some-name"
  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/standard:2.0"
    type         = "LINUX_CONTAINER"
  }

  service_role = "arn:aws:iam::123456789012:root"
  source {
    type = "CODECOMMIT"
  }
  artifacts {
    type = "CODEPIPELINE"
  }

  secondary_artifacts {
    artifact_identifier = "some-id"
    type                = "S3"
  }


  secondary_artifacts {
    artifact_identifier = "some-id"
    type                = "S3"
    encryption_disabled = true
  }
}
