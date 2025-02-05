variable "aws-region" {
    default = "us-east-1"
    description = "AWS Project region"
}

variable "aws-access_key" {
    default = ""
    description = "Access Key to auth in AWS"
    sensitive = true
}

variable "aws-secret_key" {
    default = ""
    description = "Access Key to auth in AWS"
    sensitive = true
  
}
