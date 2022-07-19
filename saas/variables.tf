variable "name" {
  type        = string
  description = "The name of the bigtable instance. NOTE Length should be between [6,33]"
}

variable "project_id" {
  type        = string
  description = "The ID of the project in which the resource belongs"
}

variable "deletion_protection" {
  type        = bool
  description = "Whether or not to allow Terraform to destroy the instance"
  default     = true
}

variable "cluster_id" {
  type        = string
  description = "The ID of the Cloud Bigtable cluster"
  default     = ""
}

variable "zone" {
  type        = string
  description = "The zone to create the Cloud Bigtable cluster in"
  # default     = "us-east1-b"
}

variable "num_nodes" {
  type        = number
  description = "The number of nodes in your Cloud Bigtable cluster"
  default     = 3
}

variable "storage_type" {
  type        = string
  description = "The storage type to use. One of 'SSD' or 'HDD' "
  default     = "SSD"
}

variable "bigtable_kms_key_name" {
  type        = string
  description = "Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster"
}

variable "labels" {
  type        = map(string)
  description = "Labels to be attached to the resources created"
  default     = {}
}

variable "bigtable_admin_members" {
  type        = list(string)
  description = "List of members to bind to bigtable admin role"
  default     = []
}
