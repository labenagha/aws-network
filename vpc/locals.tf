locals {
  selected_vpc_id = var.create_vpc_flowlog ? aws_default_vpc.default[0].id : aws_vpc.main[0].id
}
