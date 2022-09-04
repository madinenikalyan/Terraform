output "vm_id" {
  description = "The ID of the instance"
  value       = aws_instance.vm.id
}

output "vm_ip" {
  description = "The public ip of the instance"
  value       = aws_instance.vm.public_ip
}