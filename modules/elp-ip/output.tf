output "public_ip" {
  description = "The public IP address of the Elastic IP"
  value       = aws_eip.example.public_ip
}
