output "apigee_instance_attachments_id" {
  description = "Map of id values across all apigee_instance_attachments, keyed the same as var.apigee_instance_attachments except keys with no id are omitted"
  value       = { for k, v in google_apigee_instance_attachment.apigee_instance_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_instance_attachments_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_instance_attachments, keyed the same as var.apigee_instance_attachments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_instance_attachment.apigee_instance_attachments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_instance_attachments_environment" {
  description = "Map of environment values across all apigee_instance_attachments, keyed the same as var.apigee_instance_attachments except keys with no environment are omitted"
  value       = { for k, v in google_apigee_instance_attachment.apigee_instance_attachments : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "apigee_instance_attachments_instance_id" {
  description = "Map of instance_id values across all apigee_instance_attachments, keyed the same as var.apigee_instance_attachments except keys with no instance_id are omitted"
  value       = { for k, v in google_apigee_instance_attachment.apigee_instance_attachments : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "apigee_instance_attachments_name" {
  description = "Map of name values across all apigee_instance_attachments, keyed the same as var.apigee_instance_attachments except keys with no name are omitted"
  value       = { for k, v in google_apigee_instance_attachment.apigee_instance_attachments : k => v.name if v.name != null && length(v.name) > 0 }
}

