// Updates:
// - 09/02/2021: Remove NO_ARTIFACTS as per https://github.com/hashicorp/terraform-provider-aws/issues/10176
resource "aws_codebuild_project" "allowed" {
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
    type = "S3"
  }
}

resource "aws_codebuild_project" "allowed_2" {
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
    type = "S3"
  }
}

resource "aws_codebuild_project" "allowed_3" {
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
    type                = "CODEPIPELINE"
    encryption_disabled = false
  }
}

resource "aws_codebuild_project" "allowed_4" {
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
    type                = "CODEPIPELINE"
    encryption_disabled = false
  }
}

resource "aws_codebuild_project" "allowed_5" {
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
    type                = "CODEPIPELINE"
    encryption_disabled = false
  }

  secondary_artifacts {

    artifact_identifier = "some-id"
    type                = "S3"
  }
}

resource "aws_codebuild_project" "allowed_6" {
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
    type                = "CODEPIPELINE"
    encryption_disabled = false
  }

  secondary_artifacts {

    artifact_identifier = "some-id"
    type                = "S3"
  }
}

resource "aws_codebuild_project" "allowed_7" {
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
    type                = "CODEPIPELINE"
    encryption_disabled = false
  }

  secondary_artifacts {

    artifact_identifier = "some-id"
    type                = "S3"
  }

  secondary_artifacts {

    artifact_identifier = "some-id"
    type                = "S3"
    encryption_disabled = false
  }
}

resource "aws_codebuild_project" "allowed_8" {
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
    type                = "CODEPIPELINE"
    encryption_disabled = false
  }

  secondary_artifacts {

    artifact_identifier = "some-id"
    type                = "S3"
  }

  secondary_artifacts {

    artifact_identifier = "some-id"
    type                = "S3"
  }


  secondary_artifacts {

    artifact_identifier = "some-id"
    type                = "S3"
    encryption_disabled = false
  }
}
