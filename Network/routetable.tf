module "rt01" {
    source = "./module/routetable"
    vpc_id = module.vpc.vpc_id
    rt_name = "rt01"
    routetable_subnet_id = module.vpc.private_subnet_ids[5]
}

module "rt02" {
    source = "./module/routetable"
    vpc_id = module.vpc.vpc_id
    rt_name = "rt02"
    routetable_subnet_id = module.vpc.private_subnet_ids[6]
}

module "rt03" {
    source = "./module/routetable"
    vpc_id = module.vpc.vpc_id
    rt_name = "rt03"
    routetable_subnet_id = module.vpc.private_subnet_ids[3]
}

module "rt04" {
    source = "./module/routetable"
    vpc_id = module.vpc.vpc_id
    rt_name = "rt04"
    routetable_subnet_id = module.vpc.private_subnet_ids[0]
}