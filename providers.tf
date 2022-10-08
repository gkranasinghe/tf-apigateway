provider "aws" {
  region                   = var.aws_region
  profile                  = "terraform"
  shared_credentials_files = ["/home/gk/.aws/credentials"]

  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account_id}:role/terraform"
  }

  # assume_role {
  #   role_arn = "arn:aws:iam::${lookup(var.aws_account_id, var.tag_environment)}:role/MYASSUMEROLE"
  # }
}
