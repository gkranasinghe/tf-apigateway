variable "aws_account_id" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "azs" {
  type = list(any)
}

variable "private_subnets" {
  type = list(any)
}

variable "public_subnets" {
  type = list(any)
}


variable "organization_name" {
    type = string
}

variable "char_delimiter" {
  description = "The delimiter to use for unique names (default: -)"
  default     = "-"
}

variable "domain_name" {
    type = string
}