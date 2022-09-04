resource "aws_security_group_rule" "sg_rule" {
    for_each = var.sg_rules
      type              = each.value.type
      from_port         = each.value.from_port
      to_port           = each.value.to_port
      protocol          = each.value.protocol
      cidr_blocks       = each.value.cidr_blocks
      description       = each.key
      security_group_id = var.security_group_id
}