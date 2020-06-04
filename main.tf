locals {
  cluster_name = "${var.name}-${var.zone}"
}

resource "google_project_service" "enable_bigtable" {
  project = var.project
  service = "bigtable.googleapis.com"

  disable_on_destroy = false
}

resource "google_project_service" "enable_bigtable_admin_apis" {
  project = var.project
  service = "bigtableadmin.googleapis.com"

  disable_on_destroy = false
}

resource "google_bigtable_instance" "bigtable_instance" {
  name          = var.name
  instance_type = "PRODUCTION"
  project       = var.project

  cluster {
    cluster_id   = local.cluster_name
    zone         = var.zone
    num_nodes    = var.initial_num_nodes
    storage_type = var.storage_type
  }

  lifecycle {
    ignore_changes = [cluster]
  }
}

# IAM
resource "google_project_iam_member" "cloud_bigtable_admin" {
  count   = length(var.cloud_bigtable_admin_members)
  project = var.project
  role    = "roles/bigtable.admin"
  member  = var.cloud_bigtable_admin_members[count.index]
}
