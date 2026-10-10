output "connect_users_id" {
  description = "Map of id values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connect_users_arn" {
  description = "Map of arn values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "connect_users_directory_user_id" {
  description = "Map of directory_user_id values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.directory_user_id if v.directory_user_id != null && length(v.directory_user_id) > 0 }
}
output "connect_users_hierarchy_group_id" {
  description = "Map of hierarchy_group_id values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.hierarchy_group_id if v.hierarchy_group_id != null && length(v.hierarchy_group_id) > 0 }
}
output "connect_users_identity_info" {
  description = "Map of identity_info values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => one(v.identity_info) if v.identity_info != null && length(v.identity_info) > 0 }
}
output "connect_users_instance_id" {
  description = "Map of instance_id values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "connect_users_name" {
  description = "Map of name values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "connect_users_password" {
  description = "Map of password values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "connect_users_phone_config" {
  description = "Map of phone_config values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => one(v.phone_config) if v.phone_config != null && length(v.phone_config) > 0 }
}
output "connect_users_region" {
  description = "Map of region values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.region if v.region != null && length(v.region) > 0 }
}
output "connect_users_routing_profile_id" {
  description = "Map of routing_profile_id values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.routing_profile_id if v.routing_profile_id != null && length(v.routing_profile_id) > 0 }
}
output "connect_users_security_profile_ids" {
  description = "Map of security_profile_ids values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.security_profile_ids if v.security_profile_ids != null && length(v.security_profile_ids) > 0 }
}
output "connect_users_tags" {
  description = "Map of tags values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "connect_users_tags_all" {
  description = "Map of tags_all values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "connect_users_user_id" {
  description = "Map of user_id values across all connect_users, keyed the same as var.connect_users"
  value       = { for k, v in aws_connect_user.connect_users : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

