resource "aws_inspector_assessment_template" "assessment" {
  name               = "${upper(var.environment)}-${upper(var.name_prefix)}-ASSESSMENT-TEMPLATE"
  target_arn         = aws_inspector_assessment_target.assessment.arn
  duration           = var.assessment_duration
  rules_package_arns = local.assessment_ruleset

}

resource "aws_inspector_assessment_target" "assessment" {
  name  = "${upper(var.environment)}-${upper(var.name_prefix)}-ASSESSMENT-TARGET"
  resource_group_arn = aws_inspector_resource_group.resource_group.arn
}

resource "aws_inspector_resource_group" "resource_group" {
  tags = var.resource_tags
}
