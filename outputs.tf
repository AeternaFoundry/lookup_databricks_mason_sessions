output "mason_sessions_lookup_filter" {
  description = "Map of filter values across all mason_sessions_lookup, keyed the same as var.mason_sessions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.databricks_mason_sessions.mason_sessions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "mason_sessions_lookup_order_by" {
  description = "Map of order_by values across all mason_sessions_lookup, keyed the same as var.mason_sessions_lookup except keys with no order_by are omitted"
  value       = { for k, v in data.databricks_mason_sessions.mason_sessions_lookup : k => v.order_by if v.order_by != null && length(v.order_by) > 0 }
}
output "mason_sessions_lookup_page_size" {
  description = "Map of page_size values across all mason_sessions_lookup, keyed the same as var.mason_sessions_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_mason_sessions.mason_sessions_lookup : k => v.page_size if v.page_size != null }
}
output "mason_sessions_lookup_parent" {
  description = "Map of parent values across all mason_sessions_lookup, keyed the same as var.mason_sessions_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_mason_sessions.mason_sessions_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "mason_sessions_lookup_provider_config" {
  description = "Map of provider_config values across all mason_sessions_lookup, keyed the same as var.mason_sessions_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_mason_sessions.mason_sessions_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "mason_sessions_lookup_sessions" {
  description = "Map of sessions values across all mason_sessions_lookup, keyed the same as var.mason_sessions_lookup except keys with no sessions are omitted"
  value       = { for k, v in data.databricks_mason_sessions.mason_sessions_lookup : k => v.sessions if v.sessions != null && length(v.sessions) > 0 }
}

