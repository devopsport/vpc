variable "project" {
  type    = string
  default = null
}

variable "env" {
  type    = string
  default = null
}

variable "service" {
  type    = string
  default = null
}

variable "cidr_block_vpc" {
  type    = string
  default = null
}

variable "cidr_block_pri" {
  type    = list(string)
  default = []
}

variable "cidr_block_pub" {
  type    = list(string)
  default = []
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = bool
  default = false
}