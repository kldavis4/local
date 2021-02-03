/**
 * outputs.tf
 * Output values
 */
output "aws_profile" {
  value = var.aws_profile
}

output "saml_role" {
  value = var.saml_role
}

output "app" {
  value = var.app
}

output "env" {
  value = var.env
}

output "tags" {
  value = merge(
    var.tags,
    {
      "application"  = var.app,
      "environment"  = var.env,
      "tf.workspace" = terraform.workspace
    }
  )
}

output "workspace_suffix" {
  value = terraform.workspace == "default" ? "" : "-${terraform.workspace}"
}
