# Deployment Guide: aws-ha-autoscaling-devops-project

This guide provides step-by-step instructions to deploy the High Availability infrastructure.

## 🚀 Option 1: Automated Deployment (GitHub Actions)
The preferred method for a professional portfolio.

1. **Docker Hub**: Create a repository named `aws-ha-portfolio`.
2. **GitHub Secrets**: In your repo, go to `Settings` $\rightarrow$ `Secrets and variables` $\rightarrow$ `Actions` and add:
   - `DOCKERHUB_USERNAME`: Your Docker Hub username.
   - `DOCKERHUB_TOKEN`: Your Docker Hub access token.
   - `AWS_ACCESS_KEY_ID`: Your AWS access key.
   - `AWS_SECRET_ACCESS_KEY`: Your AWS secret key.
3. **Push to Main**: Commit and push your changes. The pipeline in `.github/workflows/deploy.yml` will handle the rest.

## 💻 Option 2: Manual Deployment (Terraform)
For testing and local debugging.

### Prerequisites
- Install [Terraform](https://developer.hashicorp.com/terraform/downloads).
- Configure AWS CLI: `aws configure`.

### Steps
1. **Initialize**:
   ```bash
   cd terraform
   terraform init
   ```
2. **Plan**:
   ```bash
   terraform plan -out=tfplan
   ```
3. **Apply**:
   ```bash
   terraform apply "tfplan"
   ```
4. **Access**:
   Once completed, Terraform will output the `alb_dns_name`. Copy and paste this into your browser.

## 🛠 Troubleshooting
- **ALB Returns 502/504**: Check the EC2 User-Data logs using `journalctl -u docker` or check the Target Group health checks in the AWS Console.
- **Terraform State Lock**: If a run fails, you might need to unlock the state: `terraform force-unlock <lock_id>`.
- **Scaling Not Triggering**: Use a stress tool (like `stress` or a loop of `curl`) on the instance to artificially increase CPU usage above 50%.
