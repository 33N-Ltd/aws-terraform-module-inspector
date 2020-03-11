resource "aws_iam_role_policy_attachment" "inspector_policy" {
  role       = aws_iam_role.inspector_event_role.name
  policy_arn = aws_iam_policy.inspector_policy.arn
}

