output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = module.lb.alb_dns_name
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
