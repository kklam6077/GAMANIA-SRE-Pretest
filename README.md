# Gamania SRE Pretest — Lam Kin Kwan 林建均

This repository contains my submission for the Gamania SRE Pretest, covering infrastructure provisioning, containerization, Kubernetes deployment, and CI/CD pipeline design.

---

## Repository Structure

```
sre-pretest/
├── topic1_terraform/               # Topic 1 — AWS Infrastructure (Terraform)
├── topic2_docker/                  # Topic 2 — Dockerized Nginx Service
├── topic3_helm_kubernetes/         # Topic 3 — Kubernetes Deployment (Helm)
├── topic4_cicd/                    # Topic 4 — CI/CD Pipeline (GitHub Actions)
├── topic5_GitOps_MultiEnvironment/ # Topic 5 — GitOps Multi-Environment Strategy
├── topic6_TerraformLink/           # Topic 6 — Linking Terraform to Helm
├── screenshot/                     # Evidence screenshots (AWS Console & CLI)
├── .github/workflows/deploy.yaml  # GitHub Actions pipeline (active)
├── README.md                       # This file
└── AI_DISCLOSURE.md                # AI assistance disclosure
```

---

## Where to Start

| Order | Folder | Read First |
|---|---|---|
| 1 | `topic1_terraform/` | `README.md` |
| 2 | `topic2_docker/` | `Instruction.md` |
| 3 | `topic3_helm_kubernetes/gamania-app/` | `INSTRUCTIONS.md` |
| 4 | `topic4_cicd/` | `deploy.yaml` |
| 5 | `topic5_GitOps_MultiEnvironment/` | `ANSWER.md` |
| 6 | `topic6_TerraformLink/` | `ANSWER.md` |
| — | `screenshot/` | Evidence of deployed infrastructure |

---

## Screenshots

Evidence of the deployed infrastructure and running services.

| File | Description | Source |
|---|---|---|
| `Auto Scaling Group.webp` | EKS node group Auto Scaling Group configuration | AWS Console |
| `curl_sre_txt_result.webp` | `curl` result showing `Hello SRE!` returned from NLB endpoint | CLI |
| `load balancer.webp` | NLB provisioned by Kubernetes Service, State: Active | AWS Console |
| `terraform_output_cli.webp` | `terraform output` showing vpc_id, subnet IDs, cluster name | CLI |
| `vpc resource map.webp` | VPC resource map showing public/private subnets across 3 AZs | AWS Console |
| `EKS Cluster.webp` | EKS cluster overview showing cluster status and node group | AWS Console |

---

## Architecture Summary

**Key components:**
- VPC with public/private subnets across 3 AZs
- EKS cluster with managed node group and HPA
- Docker image hosted on ECR
- Helm chart with liveness/readiness probes and resource limits
- GitHub Actions pipeline triggered on PR merge to main
