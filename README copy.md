# Bigtable Module
This module is used to provision a basic bigtable instance with a single cluster in it.
NOTE: this is only meant for internal usage, as it has some logic that is specific to Tamr's GCP setup.
This repo follows the [terraform standard module structure](https://www.terraform.io/docs/modules/index.html#standard-module-structure).

# Examples
## Basic
Inline example implementation of the module.  This is the most basic example of what it would look like to use this module.
```
module "bigtable" {
  source = "./shared_files/modules/gcp-bigtable"
  name   = "tamr"
}
```

# Resources Created
* A production bigtable instance

# Variables 
## Inputs
Write your Terraform module inputs.
* `name` (required): The name of the bigtable instance
* `initial_num_nodes` (optional): The number nodes to start the cluster with
* `zone` (optional): The zone for the cluster to be created in
* `storage_type` (optional): The storage type for the cluster

# References
This repo is based on:
* [terraform standard module structure](https://www.terraform.io/docs/modules/index.html#standard-module-structure)
* [templated terraform module](https://github.com/tmknom/template-terraform-module)
