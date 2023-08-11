# Google NAT Terraform module
Terraform module for creation Google Network Address Translation

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name                                                                      | Version   |
|---------------------------------------------------------------------------|-----------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_google"></a> [google](#requirement\_google)          | >= 4.69.1 |

## Providers
| Name                                                       | Version   |
|------------------------------------------------------------|-----------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.69.1 |

## Modules
No modules.

## Resources
| Name                                                                                                                                     | Type     |
|------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [google_compute_router.cloud_router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router)      | resource |
| [google_compute_router_nat.cloud_nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |

## Inputs
| Name                                                                                      | Description                                                                | Type           | Default | Required |
|-------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|----------------|---------|:--------:|
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services)                        | `string`       | n/a     |    no    |
| <a name="input_env"></a> [env](#input\_env)                                               | Variable to mark the environment of the resource (used to create services) | `string`       | n/a     |    no    |
| <a name="input_region"></a> [region](#input\_region)                                      | GCP region                                                                 | `string`       | n/a     |    no    |
| <a name="input_nat_confiuration"></a> [nat\_confiuration](#input\_nat\_confiuration)      | List of Cloud NAT configurations                                           | `list(object)` | []      |   yes    |


## Outputs
| Name                                                              | Description      |
|-------------------------------------------------------------------|------------------|
| <a name="output_router_id"></a> [router\_id](#output\_router\_id) | Cloud Router IDs |
| <a name="output_nat_id"></a> [nat\_id](#output\_nat\_id)          | Cloud NAT IDs    |

<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-nat/blob/main/LICENSE)
