# automated-cloud-container-lab
End-to-end CI/CD pipeline and cloud infrastructure using Terraform, AWS, Docker, and Jenkins.

# Automated Cloud & Container Deployment Lab

Infrastructure-as-Code (IaC) and automated CI/CD pipeline deploying containerized workloads onto AWS.

## Architecture & Stack
- **Infrastructure Provisioning:** Terraform (`main.tf`, `variables.tf`) provisioning custom AWS VPC, public/private subnets, Security Groups, and EC2 instances.
- **CI/CD Automation:** Jenkins pipeline triggered on Git push to build, test, and push container images.
- **Containerization:** Multi-stage Dockerfiles running lightweight application containers.

## Workflow
`Git Push` ➔ `Jenkins CI Build` ➔ `Docker Image Build` ➔ `Terraform AWS EC2 Deployment`
