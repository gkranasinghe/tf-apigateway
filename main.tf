# # Generate a unique label for naming resources
# module "unique_label" {
#   source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.12.0"
#   namespace  = var.organization_name
#   stage      = lower(terraform.workspace)
#   delimiter  = var.char_delimiter
#   attributes = []
#   tags       = {}
# }