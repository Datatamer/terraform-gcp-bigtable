output "bigtable_instance_id" {
  value       = google_bigtable_instance.bigtable_instance.name
  description = "the bigtable instance id"
}

output "bigtable_cluster_id" {
  value       = google_bigtable_instance.bigtable_instance.cluster[0].cluster_id
  description = "the bigtable cluster id"
}
