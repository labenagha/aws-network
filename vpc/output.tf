output "vpc_main" {
  value = aws_vpc.main[0].id
}

output "vpc_default" {
  value = aws_default_vpc.default
}

# output "vpc_flowlog_id" {
#   value = aws_flow_log.vpc_flowlog[0].id
# }

# output "vpc_flowlog_arn" {
#   value = aws_flow_log.vpc_flowlog[0].arn
# }