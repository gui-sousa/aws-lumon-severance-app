resource "aws_ecr_repository" "lumon-repo" {
  name                 = "lumon-repo"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

}

