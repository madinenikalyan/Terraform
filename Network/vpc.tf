
module "vpc" {
    source = "./module/vpc"
    vpc_name = var.vpc_name
    vpc_cidr_block = var.vpc_cidr_block
    
    private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
    private_availability_zones = var.private_availability_zones
    private_subnet_names = var.private_subnet_names

    public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
    public_availability_zones = var.public_availability_zones
    public_subnet_names = var.public_subnet_names
    }