resource "aws_iam_policy" "inspector_policy" {
  name        = "${upper(var.environment)}-INSPECTOR-EVENT-POLICY"
  path        = "/"
  description = "Allow Inspector to automatically scan running instances with Inspector agent installed."

  policy = data.aws_iam_policy_document.inspector_event_role_policy.json
}
