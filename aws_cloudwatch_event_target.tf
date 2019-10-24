resource "aws_cloudwatch_event_target" "inspector_event_target" {
  rule     = aws_cloudwatch_event_rule.inspector_event_schedule.name
  arn      = aws_inspector_assessment_template.assessment.arn
  role_arn = aws_iam_role.inspector_event_role.arn
}