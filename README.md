# Terraform Module - VPC

[![Build](https://github.com/devopsport/vpc/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/devopsport/vpc/actions/workflows/main.yml)
[![GitHub Issues](https://img.shields.io/github/issues/devopsport/vpc.svg)](https://github.com/devopsport/vpc/issues)
[![GitHub Tag](https://img.shields.io/github/tag-date/devopsport/vpc.svg?style=plastic)](https://github.com/devopsport/vpc/tags/)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/devopsport/vpc)

## Usage

```hcl
module "main" {
  source  = "github.com/devopsport/vpc"

  project        = "titan"
  env            = "staging"
  cidr_block_vpc = "10.0.0.0/16"
  cidr_block_pri = ["10.0.0.0/18", "10.0.64.0/18"]
  cidr_block_pub = ["10.0.128.0/18", "10.0.192.0/18"]
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block_pri"></a> [cidr\_block\_pri](#input\_cidr\_block\_pri) | Segmentos de redes privadas | `list(string)` | <pre>[<br>  "10.0.0.0/18",<br>  "10.0.64.0/18"<br>]</pre> | no |
| <a name="input_cidr_block_pub"></a> [cidr\_block\_pub](#input\_cidr\_block\_pub) | Segmentos de redes publicas | `list(string)` | <pre>[<br>  "10.0.128.0/18",<br>  "10.0.192.0/18"<br>]</pre> | no |
| <a name="input_cidr_block_vpc"></a> [cidr\_block\_vpc](#input\_cidr\_block\_vpc) | Bloque CIDR | `string` | `"10.0.0.0/16"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | Activar DNS Hostname | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | Soporte DNS | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Nombre asignado a todos los recursos creados por esta plantilla | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_private_ids"></a> [subnet\_private\_ids](#output\_subnet\_private\_ids) | Subnet private ids |
| <a name="output_subnet_public_ids"></a> [subnet\_public\_ids](#output\_subnet\_public\_ids) | Subnet public ids |
| <a name="output_vpc"></a> [vpc](#output\_vpc) | VPC values |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Docs

```sh
make precommit
```

## Authors

The module is maintained by [DevOpsPort](https://github.com/devopsport)