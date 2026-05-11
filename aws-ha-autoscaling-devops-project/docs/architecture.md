# Architecture Overview: High Availability (HA) Auto-Scaling Web Application

## 🏛 System Design
This project implements a robust, scalable, and highly available 3-tier architecture on AWS. The primary goal is to ensure that the application remains available even if an entire AWS Availability Zone (AZ) goes down.

### 🖼 Logical Flow
`User` $\rightarrow$ `Internet Gateway` $\rightarrow$ `Application Load Balancer (ALB)` $\rightarrow$ `Auto Scaling Group (ASG)` $\rightarrow$ `EC2 Instances (Dockerized Nginx)`

### 🧱 Component Breakdown
1. **Networking Layer (VPC)**:
   - **Custom VPC**: Isolated network environment.
   - **Multi-AZ Subnets**: Distributed across two Availability Zones in `ap-south-1`.
   - **Public Subnets**: House the Application Load Balancer.
   - **Private Subnets**: House the EC2 instances, ensuring they are not directly exposed to the public internet for improved security.

2. **Traffic Management (ALB)**:
   - **ALB**: Acts as the single entry point. It performs health checks on the target instances. If an instance fails, the ALB stops sending traffic to it.
   - **Target Groups**: Group the EC2 instances together to manage traffic distribution.

3. **Compute & Scaling (ASG)**:
   - **Auto Scaling Group**: Automatically maintains the desired number of instances.
   - **Target Tracking Policy**: Monitors `ASGAverageCPUUtilization`. If CPU usage exceeds 50%, the ASG automatically spins up new instances to handle the load.
   - **Launch Template**: Defines the "golden image" (Amazon Linux 2) and the `user-data` script for automated deployment.

4. **Containerization (Docker)**:
   - The application is packaged as a Docker image, ensuring the exact same environment from development to production.
