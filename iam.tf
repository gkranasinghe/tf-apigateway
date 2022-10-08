# #Codecommit IAM permissions

# #CodeBuild IAM permissions
# resource "aws_iam_role" "codebuild_assume_role" {
#   name               = "${module.unique_label.name}-codebuild-role"
#   assume_role_policy = data.template_file.codepipeline_assume_role_policy_template.rendered
# }

# # cloudwatch IAM permissions

# resource "aws_iam_role" "cloudwatch_codepipeline_trigger_role" {
#   tags = local.tags
#   name = "${module.unique_label.name}-cloudwatch_codepipeline_trigger_role"
#   assume_role_policy = jsonencode({

#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Action" : [
#           "codepipeline:StartPipelineExecution"
#         ],
#         "Resource" : [
#           join(":", ["arn:aws:codepipeline", var.aws_region, var.aws_account_id, "*"])
#         ]
#       }
#     ]
#   })

# }