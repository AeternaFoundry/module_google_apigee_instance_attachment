variable "apigee_instance_attachments" {
  description = <<EOT
Map of apigee_instance_attachments, attributes below
Required:
    - environment
    - instance_id
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    environment     = string
    instance_id     = string
    deletion_policy = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

