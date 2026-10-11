resource "oci_database_management_external_db_system_connector" "database_management_external_db_system_connectors" {
  for_each = var.database_management_external_db_system_connectors

  connector_type        = each.value.connector_type
  external_db_system_id = each.value.external_db_system_id
  agent_id              = each.value.agent_id
  defined_tags          = each.value.defined_tags
  display_name          = each.value.display_name
  freeform_tags         = each.value.freeform_tags

  dynamic "connection_info" {
    for_each = each.value.connection_info != null ? each.value.connection_info : []
    content {
      component_type = connection_info.value.component_type
      dynamic "connection_credentials" {
        for_each = connection_info.value.connection_credentials != null ? connection_info.value.connection_credentials : []
        content {
          credential_name    = connection_credentials.value.credential_name
          credential_type    = connection_credentials.value.credential_type
          password_secret_id = connection_credentials.value.password_secret_id
          role               = connection_credentials.value.role
          ssl_secret_id      = connection_credentials.value.ssl_secret_id
          user_name          = connection_credentials.value.user_name
        }
      }
      dynamic "connection_string" {
        for_each = connection_info.value.connection_string != null ? connection_info.value.connection_string : []
        content {
          host_name = connection_string.value.host_name
          hosts     = connection_string.value.hosts
          port      = connection_string.value.port
          protocol  = connection_string.value.protocol
          service   = connection_string.value.service
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

