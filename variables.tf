variable "assessment_duration" {
  type        = string
  description = "The duration of the Inspector assessment run"
  default     = "3600" # 1 hour
}

variable "cve_ruleset" {
  type        = bool
  description = "Enable Common Vulnerabilities and Exposures Ruleset"
  default     = true
}

variable "cis_ruleset" {
  type        = bool
  description = "Enable CIS Operating System Security Configuration Benchmarks Ruleset"
  default     = true
}

variable "environment" {
  type        = string
  description = "Prefix for all IAM roles, policies and resources created for Inspector."
}

variable "name_prefix" {
  type        = string
  description = "Prefix for resource names that terraform will create"
}

variable "network_reachability_ruleset" {
  type        = bool
  description = "Enable AWS Security Best Practices Ruleset"
  default     = true
}

variable "resource_tags" {
  type        = map
  description = "The tags on your EC2 Instance to run Inspector on."
}

variable "schedule_expression" {
  type        = string
  description = "AWS Schedule Expression: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html"
  default     = "cron(0 14 ? * THU *)" # Run every Thursday at 2PM UTC/9AM EST/10AM EDT
}

variable "security_best_practices_ruleset" {
  type        = bool
  description = "Enable AWS Network Reachability Ruleset"
  default     = true
}

variable "common_tags" {
  type = map(string)
}

#locals {
#  assessment_ruleset = compact([
#    var.cve_ruleset ? "arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-kZGCqcE1" : "",
#    var.cis_ruleset ? "arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-IeCjwf1W" : "",
#    var.network_reachability_ruleset ? "arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-AizSYyNq" : "",
#    var.security_best_practices_ruleset ? "arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-XApUiSaP" : "",
#  ]
#  )
#}
# To obtain the latest ARN of rule set please refer to:
# https://docs.aws.amazon.com/inspector/latest/userguide/inspector_rules-arns.html
# EU (London)
#  Common Vulnerabilities and Exposures	                    arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-kZGCqcE1
#  CIS Operating System Security Configuration Benchmarks	arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-IeCjwf1W
#  Network Reachability	                                    arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-AizSYyNq
#  Security Best Practices	                                arn:aws:inspector:eu-west-2:146838936955:rulespackage/0-XApUiSaP
# EU (Ireland)
#Common Vulnerabilities and Exposures	                    arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-ubA5XvBh
#CIS Operating System Security Configuration Benchmarks	    arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-sJBhCr0F
#Network Reachability	                                    arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SPzU33xe
#Security Best Practices	                                arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SnojL3Z6
