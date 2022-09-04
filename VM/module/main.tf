resource "aws_instance" "vm" {
    ami                    = var.ami_id
    instance_type          = var.instance_type
    subnet_id              = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    availability_zone      = var.availability_zone
    associate_public_ip_address = var.associate_public_ip_address
    key_name                    = var.key_name
    user_data                   = var.user_data
    tags                        = var.tags

    root_block_device {
    volume_type           = var.root_volume_type
    volume_size           = var.root_volume_size
    delete_on_termination = var.delete_on_termination
    
  }

}

