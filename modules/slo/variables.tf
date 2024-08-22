variable "datadog_slos" {
  type        = any
  description = "Map of Datadog SLO configurations"
}

variable "alert_tags" {
  type        = list(string)
  description = "List of alert tags to add to all alert messages, e.g. `[\"@opsgenie\"]` or `[\"@devops\", \"@opsgenie\"]`"
  default     = null
}

variable "alert_tags_separator" {
  type        = string
  description = "Separator for the alert tags. All strings from the `alert_tags` variable will be joined into one string using the separator and then added to the alert message"
  default     = "\n"
}

variable "default_tags_enabled" {
  type        = bool
  description = <<-EOT
    If true, monitors without `tags` in their definitions will have tags
    from `null-label` added to them. Note that even an empty `list` or `map` of tags in
    the monitor definition will keep the default tags from being added.
    EOT
  default     = true
}
