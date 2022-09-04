resource "aws_key_pair" "ssh_key" {
    key_name = var.key_name
    public_key = file(var.public_key_location)
}

module "uat_liferay_vm" {
    source = "./module"
    ami_id                    = var.ami_id
    instance_type          = var.instance_type
    subnet_id              = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    availability_zone      = var.availability_zone
    key_name               = aws_key_pair.ssh_key.key_name
    tags = {
      "Name" = "UAT-Liferay-CN"
    }
    user_data                   = file("./scrpit.sh")
}
    
