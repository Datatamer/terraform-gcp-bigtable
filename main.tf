locals {
  cluster_name = "${var.name}-${var.zone}"
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
