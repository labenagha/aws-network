######################################################
######################## AWS Vpc #####################

variable "enable_dns_support" {
  description = "Value fo DNS suport for VPC"
  type        = bool
  default     = true
}

variable "create_vpc" {
  description = "Whether Or not a VPC should be created"
  type        = bool
  default     = true
}

variable "cidr_block" {
  description = "CIDR for VPC"
  type        = string
  default     = ""
}

variable "instance_tenancy" {
  description = "Instance tenancy for VPC, Accepted values are: default or dedicated"
  type        = string
  default     = "default"
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

######################################################
################ AWS Vpc Default #####################

variable "manage_default_vpc" {
  description = "Should be true to adopt and manage Default VPC"
  type        = bool
  default     = false
}

variable "default_vpc_name" {
  description = "Name to be used on the Default VPC"
  type        = string
  default     = ""
}

variable "default_vpc_enable_dns_support" {
  description = "Should be true to enable DNS support in the Default VPC"
  type        = bool
  default     = true
}

variable "default_vpc_enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the Default VPC"
  type        = bool
  default     = true
}

variable "default_vpc_tags" {
  description = "Additional tags for the Default VPC"
  type        = map(string)
  default     = {}
}

######################################################
############### AWS Vpc Flow Log #####################
variable "create_vpc_flowlog" {
  description = "Set to true to create the flow log to the default VPC Or custom VPC."
  type        = bool
  default     = false
}

variable "iam_role_arn" {
  description = "ARN of the IAM role for publishing logs."
  type        = string
  default     = ""
}

variable "log_destination" {
  description = "The destination for the flow log data."
  type        = string
  default     = ""
}

variable "traffic_type" {
  description = "The type of traffic to log. Options are ACCEPT, REJECT, ALL."
  type        = string
  default     = "ALL"
}

variable "log_format" {
  description = "The log format for the flow log. Accepted format: `$${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport}`"
  type        = string
  default     = ""
}

variable "max_aggregation_interval" {
  description = "The max interval for aggregation, in seconds."
  type        = number
  default     = 60
}

