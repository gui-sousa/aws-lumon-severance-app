resource "aws_apprunner_service" "lumon-service" {
  service_name = "lumon-service"

  source_configuration {
    authentication_configuration {
      access_role_arn = aws_iam_role.lumon_role.arn
    }

    image_repository {
      image_identifier      = docker_image.lumon-container.name
      image_repository_type = "ECR"
      image_configuration {
        port = 80
      }
    }
  }

  instance_configuration {
    cpu    = "1 vCPU"
    memory = "2 GB"
  }

  health_check_configuration {
    protocol = "TCP"
  }

}
