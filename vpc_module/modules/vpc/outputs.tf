output "az" {
    value = local.azs
}
output "public_subnets" {
  value = local.public_subnets
}
output "private_subnets" {
  value = local.private_subnets
}
output "vpc_id" {
  value = aws_vpc.main.id 
  description = "The ID of the created VPC"
}

output "public_subnets_ids" {
  value = [ for s in aws_subnet.public : s.id]
  description = "List of public subnet IDs"
  
}
output "private_subnets_ids" {
  value = [ for s in aws_subnet.private : s.id]
  description = "List of private subnet IDs"
  
}
output "public_subnets_map" {
  value = { for az, subnet in aws_subnet.public : az=> subnet.id}
  description = "Map of AZ to public Subnet ID"
  }