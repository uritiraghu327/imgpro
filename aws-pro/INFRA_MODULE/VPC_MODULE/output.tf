output "vpc-ip" {
    value = aws_vpc.vpc
    
  
}

output "vpc_name" {
    value = aws_vpc.vpc

  
}

output "sub_name" {
    value = aws_subnet.subnet
  
}

output "sub-ip" {
    value = aws_subnet.subnet
  
}

output "igw_name" {
    value = aws_internet_gateway.igw
  
}

output "rt-name" {
    value = aws_default_route_table.rt
  
}


