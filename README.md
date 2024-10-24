# Module - VPC

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

## Authors

The module is maintained by [DevOpsPort](https://github.com/devopsport)
