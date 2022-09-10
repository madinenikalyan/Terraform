region = "us-east-1"
vpc_name = "testvpc"
vpc_cidr_block = "10.71.0.0/16"

private_subnet_cidr_blocks = ["10.71.3.0/24","10.71.4.0/24","10.71.5.0/24","10.71.6.0/24","10.71.7.0/24","10.71.8.0/24","10.71.9.0/24"]
private_availability_zones = ["us-east-1a","us-east-1b","us-east-1c","us-east-1a","us-east-1b","us-east-1c","us-east-1a"]
private_subnet_names = ["subnet3","subnet4","subnet5","subnet6","subnet7","subnet8","subnet9"]

public_subnet_cidr_blocks = ["10.71.0.0/24","10.71.1.0/24","10.71.2.0/24"]
public_availability_zones = ["us-east-1a","us-east-1b","us-east-1c"]
public_subnet_names = ["subnet0","subnet1","subnet2"]
 