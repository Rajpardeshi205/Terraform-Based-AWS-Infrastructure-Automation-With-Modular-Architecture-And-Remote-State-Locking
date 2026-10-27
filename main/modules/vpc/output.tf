output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}


output "public_availability_zone" {
  value = aws_subnet.public.availability_zone
}

output "private_availability_zone" {
  value = aws_subnet.private.availability_zone
}

output "nat_gateway_id" {
  value = aws_nat_gateway.this.id
}
output "private_route_table_id" {
  description = "Private Route Table ID"
  value       = aws_route_table.private.id
}
