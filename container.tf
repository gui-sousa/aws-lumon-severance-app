data "aws_ecr_authorization_token" "lumon-repo-token" {

}

provider "docker" {
  registry_auth {
    address  = data.aws_ecr_authorization_token.lumon-repo-token.proxy_endpoint
    username = data.aws_ecr_authorization_token.lumon-repo-token.user_name
    password = data.aws_ecr_authorization_token.lumon-repo-token.password
  }
}


resource "docker_image" "lumon-container" {
  name = "${aws_ecr_repository.lumon-repo.repository_url}:latest"
  build {
    context = "."
  }

  platform = "linux/arm64"

}

resource "docker_registry_image" "lumon-image-registry" {
  name = docker_image.lumon-container.name
}
