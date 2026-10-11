output "database_management_external_db_system_connectors_id" {
  description = "Map of id values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_management_external_db_system_connectors_agent_id" {
  description = "Map of agent_id values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no agent_id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "database_management_external_db_system_connectors_compartment_id" {
  description = "Map of compartment_id values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_management_external_db_system_connectors_connection_failure_message" {
  description = "Map of connection_failure_message values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no connection_failure_message are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.connection_failure_message if v.connection_failure_message != null && length(v.connection_failure_message) > 0 }
}
output "database_management_external_db_system_connectors_connection_info" {
  description = "Map of connection_info values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no connection_info are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.connection_info if v.connection_info != null && length(v.connection_info) > 0 }
}
output "database_management_external_db_system_connectors_connection_status" {
  description = "Map of connection_status values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no connection_status are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.connection_status if v.connection_status != null && length(v.connection_status) > 0 }
}
output "database_management_external_db_system_connectors_connector_type" {
  description = "Map of connector_type values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no connector_type are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.connector_type if v.connector_type != null && length(v.connector_type) > 0 }
}
output "database_management_external_db_system_connectors_defined_tags" {
  description = "Map of defined_tags values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_management_external_db_system_connectors_display_name" {
  description = "Map of display_name values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no display_name are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_management_external_db_system_connectors_external_db_system_id" {
  description = "Map of external_db_system_id values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no external_db_system_id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.external_db_system_id if v.external_db_system_id != null && length(v.external_db_system_id) > 0 }
}
output "database_management_external_db_system_connectors_freeform_tags" {
  description = "Map of freeform_tags values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_management_external_db_system_connectors_lifecycle_details" {
  description = "Map of lifecycle_details values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "database_management_external_db_system_connectors_state" {
  description = "Map of state values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no state are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_management_external_db_system_connectors_system_tags" {
  description = "Map of system_tags values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no system_tags are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "database_management_external_db_system_connectors_time_connection_status_last_updated" {
  description = "Map of time_connection_status_last_updated values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no time_connection_status_last_updated are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.time_connection_status_last_updated if v.time_connection_status_last_updated != null && length(v.time_connection_status_last_updated) > 0 }
}
output "database_management_external_db_system_connectors_time_created" {
  description = "Map of time_created values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no time_created are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "database_management_external_db_system_connectors_time_updated" {
  description = "Map of time_updated values across all database_management_external_db_system_connectors, keyed the same as var.database_management_external_db_system_connectors except keys with no time_updated are omitted"
  value       = { for k, v in oci_database_management_external_db_system_connector.database_management_external_db_system_connectors : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

