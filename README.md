<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.0, <6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.0, <6.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_bigtable_instance.bigtable_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigtable_instance) | resource |
| [google_project_iam_member.cloud_bigtable_admin](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_service.enable_bigtable](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_project_service.enable_bigtable_admin_apis](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the bigtable instance. NOTE Length should be between [6,33] | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project the cluster should be deployed to | `string` | n/a | yes |
| <a name="input_cloud_bigtable_admin_members"></a> [cloud\_bigtable\_admin\_members](#input\_cloud\_bigtable\_admin\_members) | The list of members to bind to bigtable admin role | `list(string)` | `[]` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | set deletion protection on bigtable stack | `bool` | `true` | no |
| <a name="input_initial_num_nodes"></a> [initial\_num\_nodes](#input\_initial\_num\_nodes) | The number nodes to start the cluster with | `number` | `1` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | The storage type for the cluster | `string` | `"SSD"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The zone for the cluster to be created in | `string` | `"us-east1-b"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bigtable_cluster_id"></a> [bigtable\_cluster\_id](#output\_bigtable\_cluster\_id) | the bigtable cluster id |
| <a name="output_bigtable_instance_id"></a> [bigtable\_instance\_id](#output\_bigtable\_instance\_id) | the bigtable instance id |
<!-- END_TF_DOCS -->