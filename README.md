# terraform-gcp-bigtable
Terraform repo for terraform-gcp-bigtable

# Examples
## Minimal
This is the most basic example of what it would look like to use this module
- [Minimal](https://github.com/Datatamer/terraform-gcp-tamr-bigtable/tree/master/examples/minimal)

# Resources Created
This modules creates the following resources:
* cloud bigtable instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| google | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| google | >= 4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the bigtable instance. NOTE Length should be between [6,33] | `string` | n/a | yes |
| project | The project the cluster should be deployed to | `string` | n/a | yes |
| cloud\_bigtable\_admin\_members | The list of members to bind to bigtable admin role | `list(string)` | `[]` | no |
| deletion\_protection | set deletion protection on bigtable stack | `bool` | `true` | no |
| initial\_num\_nodes | The number nodes to start the cluster with | `number` | `1` | no |
| storage\_type | The storage type for the cluster | `string` | `"SSD"` | no |
| zone | The zone for the cluster to be created in | `string` | `"us-east1-b"` | no |

## Outputs

| Name | Description |
|------|-------------|
| bigtable\_cluster\_id | the bigtable cluster id |
| bigtable\_instance\_id | the bigtable instance id |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# References
This repo is based on:
* [terraform standard module structure](https://www.terraform.io/docs/modules/index.html#standard-module-structure)
* [templated terraform module](https://github.com/tmknom/template-terraform-module)

# Development
## Generating Docs
Run `make terraform/docs` to generate the section of docs around terraform inputs, outputs and requirements.

## Checkstyles
Run `make lint`, this will run terraform fmt, in addition to a few other checks to detect whitespace issues.
NOTE: this requires having docker working on the machine running the test

## Releasing new versions
* Update version contained in `VERSION`
* Document changes in `CHANGELOG.md`
* Create a tag in github for the commit associated with the version

# License
Apache 2 Licensed. See LICENSE for full details.
