resource "google_apigee_instance_attachment" "apigee_instance_attachments" {
  for_each = var.apigee_instance_attachments

  environment     = each.value.environment
  instance_id     = each.value.instance_id
  deletion_policy = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

