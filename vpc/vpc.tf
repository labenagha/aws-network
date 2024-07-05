######################################################
################# AWS Vpc ############################
resource "aws_vpc" "main" {
  count              = var.create_vpc || var.manage_default_vpc ? 1 : 0
  cidr_block         = var.cidr_block
  enable_dns_support = var.enable_dns_support
  instance_tenancy   = var.instance_tenancy
  tags               = merge({ "Name" = format("%s", var.name) }, var.tags, var.vpc_tags)
}

######################################################
################ AWS Vpc Default #####################
resource "aws_default_vpc" "default" {
  count                = var.create_vpc && var.manage_default_vpc ? 1 : 0
  enable_dns_support   = var.default_vpc_enable_dns_support
  enable_dns_hostnames = var.default_vpc_enable_dns_hostnames
  tags                 = merge({ "Name" = coalesce(var.default_vpc_name, "default") }, var.tags, var.default_vpc_tags)
}

######################################################
############### AWS Vpc Flow Log #####################
resource "aws_flow_log" "vpc_flowlog" {
  count                    = var.create_vpc_flowlog ? 1 : 0
  vpc_id                   = local.selected_vpc_id
  iam_role_arn             = var.iam_role_arn
  log_destination          = var.log_destination
  traffic_type             = var.traffic_type
  log_format               = var.log_format
  max_aggregation_interval = var.max_aggregation_interval
  tags                     = var.tags
}
