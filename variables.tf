variable "mason_sessions_lookup" {
  description = <<EOT
Map of mason_sessions_lookup, attributes below
Required:
    - parent
Optional:
    - filter
    - order_by
    - page_size
    - provider_config
EOT

  type = map(object({
    parent    = string
    filter    = optional(string)
    order_by  = optional(string)
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

