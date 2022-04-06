<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_elasticsearch"></a> [elasticsearch](#module\_elasticsearch) | cloudposse/elasticsearch/aws | 0.35.1 |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.es](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automated_snapshot_start_hour"></a> [automated\_snapshot\_start\_hour](#input\_automated\_snapshot\_start\_hour) | Hour at which automated snapshots are taken, in UTC | `number` | `2` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | Availability Zones for the domain to use | `list(string)` | `[]` | no |
| <a name="input_ebs_volume_size"></a> [ebs\_volume\_size](#input\_ebs\_volume\_size) | EBS volumes for data storage in GB | `number` | `10` | no |
| <a name="input_elasticsearch_version"></a> [elasticsearch\_version](#input\_elasticsearch\_version) | Version of Elasticsearch to deploy (e.g. 7.4, 7.1, 6.8, ...) | `string` | `"6.5"` | no |
| <a name="input_encrypt_at_rest_enabled"></a> [encrypt\_at\_rest\_enabled](#input\_encrypt\_at\_rest\_enabled) | Whether to enable encryption at rest | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of environment (e.g. eu-west-1, dev, ...) | `string` | `""` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | Number of data nodes in the cluster | `number` | `2` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Elasticsearch instance type for data nodes in the cluster | `string` | `"t2.small.elasticsearch"` | no |
| <a name="input_project"></a> [project](#input\_project) | Name of the project | `string` | `""` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | List of security group IDs to be allowed to connect to the cluster | `list(string)` | `[]` | no |
| <a name="input_sg_egress_cidr_blocks"></a> [sg\_egress\_cidr\_blocks](#input\_sg\_egress\_cidr\_blocks) | (Optional) List of CIDR blocks | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_sg_egress_from_port"></a> [sg\_egress\_from\_port](#input\_sg\_egress\_from\_port) | Start of the port range | `number` | `0` | no |
| <a name="input_sg_egress_protocol"></a> [sg\_egress\_protocol](#input\_sg\_egress\_protocol) | Protocol to use | `string` | `"-1"` | no |
| <a name="input_sg_egress_to_port"></a> [sg\_egress\_to\_port](#input\_sg\_egress\_to\_port) | End of the port range | `number` | `0` | no |
| <a name="input_sg_ingress_cidr_blocks"></a> [sg\_ingress\_cidr\_blocks](#input\_sg\_ingress\_cidr\_blocks) | (Optional) List of CIDR blocks | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_sg_ingress_from_port"></a> [sg\_ingress\_from\_port](#input\_sg\_ingress\_from\_port) | Start of the port range | `number` | `443` | no |
| <a name="input_sg_ingress_protocol"></a> [sg\_ingress\_protocol](#input\_sg\_ingress\_protocol) | Protocol to use | `string` | `"tcp"` | no |
| <a name="input_sg_ingress_to_port"></a> [sg\_ingress\_to\_port](#input\_sg\_ingress\_to\_port) | End of the port range | `number` | `443` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | VPC Subnet IDs | `list(string)` | `[]` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | `""` | no |
| <a name="input_zone_awareness_enabled"></a> [zone\_awareness\_enabled](#input\_zone\_awareness\_enabled) | Enable zone awareness for Elasticsearch cluster | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->