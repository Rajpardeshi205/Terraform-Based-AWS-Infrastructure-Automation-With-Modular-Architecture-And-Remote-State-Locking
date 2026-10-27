output "instance_id" {
  description = "Public EC2 Instance ID"
  value       = aws_instance.exam_ec2_instance.id
}

output "public_ip" {
  description = "Public IP Address Of The Web Server"
  value       = aws_instance.exam_ec2_instance.public_ip
}

output "private_ip" {
  description = "Private IPv4 Address Of The EC2 Instance"
  value       = aws_instance.exam_ec2_instance.private_ip
}

output "security_group_id" {
  description = "Security Group ID Of The Web Server"
  value       = aws_security_group.exam_ec2_sg.id
}

output "key_pair_name" {
  description = "Registered AWS Key Pair Name"
  value       = aws_key_pair.exam_ec2_key.key_name
}
