data "databricks_mason_sessions" "mason_sessions_lookup" {
  for_each = var.mason_sessions_lookup

  parent          = each.value.parent
  filter          = each.value.filter
  order_by        = each.value.order_by
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

