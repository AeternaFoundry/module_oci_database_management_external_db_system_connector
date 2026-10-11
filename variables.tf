variable "database_management_external_db_system_connectors" {
  description = <<EOT
Map of database_management_external_db_system_connectors, attributes below
Required:
    - connector_type
    - external_db_system_id
Optional:
    - agent_id
    - defined_tags
    - display_name
    - freeform_tags
    - connection_info (block):
        - component_type (required)
        - connection_credentials (optional, block):
            - credential_name (optional)
            - credential_type (optional)
            - password_secret_id (optional)
            - role (optional)
            - ssl_secret_id (optional)
            - user_name (optional)
        - connection_string (optional, block):
            - host_name (optional)
            - hosts (optional)
            - port (optional)
            - protocol (optional)
            - service (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    connector_type        = string
    external_db_system_id = string
    agent_id              = optional(string)
    defined_tags          = optional(map(string))
    display_name          = optional(string)
    freeform_tags         = optional(map(string))
    connection_info = optional(list(object({
      component_type = string
      connection_credentials = optional(list(object({
        credential_name    = optional(string)
        credential_type    = optional(string)
        password_secret_id = optional(string)
        role               = optional(string)
        ssl_secret_id      = optional(string)
        user_name          = optional(string)
      })))
      connection_string = optional(list(object({
        host_name = optional(string)
        hosts     = optional(list(string))
        port      = optional(number)
        protocol  = optional(string)
        service   = optional(string)
      })))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_management_external_db_system_connectors : (
        contains([for v in ["MACS"] : lower(v)], lower(v.connector_type))
      )
    ])
    error_message = "must be one of: \"MACS\""
  }
}

