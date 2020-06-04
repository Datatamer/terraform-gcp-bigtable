#
# required variables
#
variable "name" {
  type        = string
  description = "The name of the bigtable instance. NOTE Length should be between [6,33]"
}

variable "project" {
  type        = string
  description = "The project the cluster should be deployed to"
}

#
# optional variables
#
variable "initial_num_nodes" {
  type        = number
  description = "The number nodes to start the cluster with"
  # NOTE: if using a newer provider you can set to this 1
  default = 1
}

variable "zone" {
  type        = string
  description = "The zone for the cluster to be created in"
  default     = "us-east1-b"
}

# storage_type
variable "storage_type" {
  type        = string
  description = "The storage type for the cluster"
  default     = "SSD"
}

variable "cloud_bigtable_admin_members" {
  type        = list(string)
  description = "The list of members to bind to bigtable admin role"
  default     = []
}
