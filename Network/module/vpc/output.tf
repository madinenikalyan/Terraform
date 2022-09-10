output "public_subnet_ids" {
  value       = aws_subnet.public_subnets.*.id
  description = "List of public subnet IDs"
}

output "private_subnet_ids" {
  value       = aws_subnet.private_subnets.*.id
  description = "List of private subnet IDs"
}

output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "VPC ID"
}
