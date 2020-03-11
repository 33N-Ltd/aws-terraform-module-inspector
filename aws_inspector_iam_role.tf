resource "aws_iam_role" "inspector_event_role" {
  name               = "${upper(var.environment)}-INSPECTOR-EVENT-ROLE"
  description        = "Allows Inspector to scan running instances."
  assume_role_policy = data.aws_iam_policy_document.inspector_event_policy_trust.json
}

