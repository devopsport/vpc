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
  # default = "10.0.0.0/16"
}

variable "cidr_block_pri" {
  type    = list(string)
  # default = ["10.0.0.0/18", "10.0.64.0/18"]
}

variable "cidr_block_pub" {
  type    = list(string)
  # default = ["10.0.128.0/18", "10.0.192.0/18"]
}

variable "enable_dns_support" {
  type = bool
}

variable "enable_dns_hostnames" {
  type = bool
}