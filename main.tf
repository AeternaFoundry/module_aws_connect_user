resource "aws_connect_user" "connect_users" {
  for_each = var.connect_users

  instance_id          = each.value.instance_id
  name                 = each.value.name
  routing_profile_id   = each.value.routing_profile_id
  security_profile_ids = each.value.security_profile_ids
  directory_user_id    = each.value.directory_user_id
  hierarchy_group_id   = each.value.hierarchy_group_id
  password             = each.value.password
  region               = each.value.region
  tags                 = each.value.tags
  tags_all             = each.value.tags_all

  phone_config {
    after_contact_work_time_limit = each.value.phone_config.after_contact_work_time_limit
    auto_accept                   = each.value.phone_config.auto_accept
    desk_phone_number             = each.value.phone_config.desk_phone_number
    phone_type                    = each.value.phone_config.phone_type
  }

  dynamic "identity_info" {
    for_each = each.value.identity_info != null ? [each.value.identity_info] : []
    content {
      email           = identity_info.value.email
      first_name      = identity_info.value.first_name
      last_name       = identity_info.value.last_name
      secondary_email = identity_info.value.secondary_email
    }
  }
}

