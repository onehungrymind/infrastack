variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "region" {
  description = "The default AWS region"
  default     = "us-west-2"
}

variable "write_aws_auth_config" {
  description = "Whether or not to output an auth K8s config-map file"
  default     = false
}

variable "write_kubeconfig" {
  description = "Whether or not to output a K9s file."
  default     = false
}

