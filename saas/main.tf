locals {
  cluster_id = var.cluster_id != "" ? var.cluster_id : var.name
}

resource "google_bigtable_instance" "bigtable_instance" {
  name    = var.name
  project = var.project_id

  deletion_protection = var.deletion_protection

  cluster {
    cluster_id   = local.cluster_id
    zone         = var.zone
    num_nodes    = var.num_nodes
    storage_type = var.storage_type
    kms_key_name = var.bigtable_kms_key_name
  }

  labels = var.labels

  lifecycle {
    # This is controlled by an autoscaler outside of terraform
    ignore_changes = [cluster[0].num_nodes]
  }
}

resource "google_project_iam_member" "bigtable_admin" {
  for_each = toset(var.bigtable_admin_members)

  project = var.project_id
  role    = "roles/bigtable.admin"
  member  = each.value
}
