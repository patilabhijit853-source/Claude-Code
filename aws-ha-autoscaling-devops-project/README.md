# AWS High Availability Auto-Scaling Portfolio 🚀

[![Terraform](https://img.shields.io/badge/Terraform-7B42BF?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions)

## 🌟 Project Overview
This is an enterprise-grade DevOps project demonstrating a **Highly Available (HA)** and **Scalable** web architecture on AWS. It utilizes Infrastructure as Code (IaC) to deploy a load-balanced environment that automatically scales based on real-time traffic demands.

### 🎯 Key Objectives
- **Zero Single Point of Failure**: Multi-AZ deployment ensuring 99.9% availability.
- **Elasticity**: Automatic scaling using Target Tracking Policies.
- **Security**: Layered security using Public/Private subnets and restrictive Security Groups.
- **Automation**: End-to-end CI/CD pipeline from code commit to cloud deployment.

---

## 🛠 Technical Stack
| Component | Technology | Purpose |
| :--- | :--- | :--- |
| **Cloud Provider** | AWS (ap-south-1) | Primary Infrastructure |
| **IaC** | Terraform | Modular Infrastructure Provisioning |
| **Compute** | EC2 (Amazon Linux 2) | Application Hosting |
| **Scaling** | ASG & Target Tracking | Dynamic Resource Management |
| **Traffic** | Application Load Balancer | Traffic Distribution & Health Checks |
| **Container** | Docker & Nginx | Application Packaging & Delivery |
| **CI/CD** | GitHub Actions | Automated Build and Deployment |
| **OS** | Linux | Server Environment |

---

## 📐 Architecture
The project follows a professional 3-tier design:
1. **Public Layer**: ALB receives internet traffic and forwards it to the private layer.
2. **Private Layer**: EC2 instances running in private subnets for maximum security.
3. **Automation Layer**: GitHub Actions triggering Terraform to maintain the state.

Detailed architecture explanation can be found in [docs/architecture.md](./docs/architecture.md).

---

## 🚀 Getting Started

### Quick Start (Manual)
```bash
# Clone the repo
git clone https://github.com/patilabhijit853-source/Claude-Code.git
cd aws-ha-autoscaling-devops-project/terraform

# Initialize and Deploy
terraform init
terraform apply -auto-approve
```

### CI/CD Flow
`Code Push` $\rightarrow$ `Docker Build` $\rightarrow$ `Docker Hub Push` $\rightarrow$ `Terraform Apply` $\rightarrow$ `Live Site`

---

## 💡 DevOps Interview Guide (Real-World Explanation)

**Question: Why did you choose a Target Tracking Policy instead of Simple Scaling?**
> "I used Target Tracking because it acts like a thermostat. Instead of manually defining 'add 1 instance when CPU is 70%', I tell AWS to 'keep the average CPU at 50%'. This is more efficient as it handles both scaling out and scaling in automatically based on the actual load, reducing manual overhead and cost."

**Question: How did you secure the application?**
> "I implemented a 'Defense in Depth' strategy. The application instances are placed in private subnets with no direct internet access. Only the ALB resides in the public subnet. I also configured a Security Group chain: the EC2 instances only accept traffic on port 80 if it originates specifically from the ALB's security group."

**Question: How do you ensure the system recovers from an AZ failure?**
> "By distributing the Auto Scaling Group across multiple Availability Zones. If one AZ goes offline, the ALB health checks will fail for instances in that zone, and the ASG will automatically spin up new instances in the remaining healthy AZ to maintain the desired capacity."

---

## 📉 Cost Optimization & Best Practices
- **Free Tier**: Used `t2.micro` and `ap-south-1` to keep costs at zero/minimal.
- **State Management**: Recommend using S3 Backend for Terraform state in production.
- **Immutable Infrastructure**: Using Launch Templates ensures that every instance is a perfect replica of the defined configuration.
- **Graceful Shutdown**: Configured ALB termination protection and health check grace periods.

---

## 🛠 Common Terraform Commands
- `terraform init`: Initialize the working directory.
- `terraform plan`: Preview changes before applying.
- `terraform apply`: Deploy infrastructure.
- `terraform destroy`: Clean up all resources.
- `terraform state list`: View all managed resources.
