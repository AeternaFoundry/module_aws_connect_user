variable "connect_users" {
  description = <<EOT
Map of connect_users, attributes below
Required:
    - instance_id
    - name
    - routing_profile_id
    - security_profile_ids
    - phone_config (block):
        - after_contact_work_time_limit (optional)
        - auto_accept (optional)
        - desk_phone_number (optional)
        - phone_type (required)
Optional:
    - directory_user_id
    - hierarchy_group_id
    - password
    - region
    - tags
    - tags_all
    - identity_info (block):
        - email (optional)
        - first_name (optional)
        - last_name (optional)
        - secondary_email (optional)
EOT

  type = map(object({
    instance_id          = string
    name                 = string
    routing_profile_id   = string
    security_profile_ids = set(string)
    directory_user_id    = optional(string)
    hierarchy_group_id   = optional(string)
    password             = optional(string)
    region               = optional(string)
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
    phone_config = object({
      after_contact_work_time_limit = optional(number)
      auto_accept                   = optional(bool)
      desk_phone_number             = optional(string)
      phone_type                    = string
    })
    identity_info = optional(object({
      email           = optional(string)
      first_name      = optional(string)
      last_name       = optional(string)
      secondary_email = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.connect_users : (
        v.identity_info == null || (v.identity_info.first_name == null || (length(v.identity_info.first_name) >= 1 && length(v.identity_info.first_name) <= 100))
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.connect_users : (
        v.identity_info == null || (v.identity_info.last_name == null || (length(v.identity_info.last_name) >= 1 && length(v.identity_info.last_name) <= 100))
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.connect_users : (
        v.phone_config.after_contact_work_time_limit == null || (v.phone_config.after_contact_work_time_limit >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

