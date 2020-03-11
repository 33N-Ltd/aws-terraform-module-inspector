resource "aws_cloudwatch_event_rule" "inspector_event_schedule" {
  name                = "${upper(var.environment)}-${upper(var.name_prefix)}-INSPECTOR-SCHEDULE"
  description         = "Trigger an Inspector Assessment"
  schedule_expression = var.schedule_expression
}

