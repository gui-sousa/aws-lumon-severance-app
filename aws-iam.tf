resource "aws_iam_role" "lumon_role" {
  name = "lumon-role"

  assume_role_policy = jsonencode({
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "build.apprunner.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })

}

resource "aws_iam_role_policy_attachment" "lumon-policy" {
  role       = aws_iam_role.lumon_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppRunnerServicePolicyForECRAccess"

}
