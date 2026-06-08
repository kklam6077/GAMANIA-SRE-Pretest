# AI Assistance Disclosure

In accordance with the pretest requirements, this document clearly states which parts of this submission were completed independently and which parts were assisted by generative AI (Claude by Anthropic).

---

## Independently Completed (No AI Assistance)

The following parts were written and implemented entirely by myself:

**Topic 1 — Terraform**
- Wrote all `.tf` files (`main.tf`, `vpc.tf`, `eks.tf`, `provider.tf`, `variables.tf`, `outputs.tf`) independently
- Provisioned the actual AWS infrastructure (VPC, EKS cluster, Node Group) hands-on
- Debugged and resolved real infrastructure issues during deployment

**Topic 2 — Dockerfile**
- Wrote the initial Dockerfile independently
- Built, tagged, and pushed the image to ECR independently
- Debugged container runtime issues (port conflicts, container naming) independently

**All hands-on execution**
- All `terraform`, `kubectl`, `docker`, `helm`, and `aws cli` commands were executed and debugged by myself
- All AWS Console operations and screenshots were done by myself

---

## AI-Assisted Parts

The following parts were completed with the assistance of **Claude (claude.ai)** by Anthropic.

### Topic 1 — Terraform
AI was used to review the Terraform configuration for potential issues.

**Prompts used:**
- *"Please kindly review potential syntax error"*

---

### Topic 2 — Dockerfile
AI was consulted for security best practices during Dockerfile development.

**Prompts used:**
- *"Please advise how to change from root user to non-root user"*

---

### Topic 3 — Helm Chart
AI assisted in reviewing the Helm chart structure, annotations, and documentation.

**Prompts used:**
- *"我目前完成了K8s with helm chart, 請幫忙看一下我的注釋有沒有什麼問題和是否存在Syntax Error"*
- *"請幫忙Create Readme.MD了, 請參考剛提交的yaml file"*
- *"請幫忙Review 一下目前架構是否有問題"*

---

### Topic 4 — GitHub Actions CI/CD Pipeline
AI assisted in reviewing and enhancing the pipeline, including adding the Terraform provisioning job and deployment verification step.

**Prompts used:**
- *"請幫我把annotation 看一下有沒有很confuse 的地方, 請你幫忙更改一下"*
- *"請幫忙Review 目前CICD 是否完整, 有沒有可以enhance 的地方"*

---

### Topic 5 — GitOps Multi-Environment Strategy
AI was used to discuss multi-environment strategies and summarize the approach into documentation.

**Prompts used:**
- *"目前我打算利用github 本來已經有的reviewer approve 的機能來區分Alpha, beta, production stage (one promotion), 有沒有比one promotion 好的做法?"*
- *"請幫我把以下內容Summary as Markdown, 要注意可讀性"*

---

### Topic 6 — Linking Terraform to Helm
AI was used to discuss the risks of external value injection and summarize the approach into documentation.

**Prompts used:**
- *"我在Terraform 那一個已經有做S3 backend 的partial configuration 了, 我想helm 的部份也可以在CI/CD用外部注入, 請問這個有什麼Risk 是我需要注意的嗎?"*
- *"請幫我把以下內容Summary as Markdown, 要注意可讀性"*

---

### Annotations and Documentation
AI assisted in writing inline code comments and documentation for all topics, including:
- Inline code comments for `main.tf`, `vpc.tf`, `eks.tf`, `provider.tf`
- Inline code comments for `Dockerfile`
- Inline code comments for Helm chart templates and `deploy.yaml`
- `README.md` for Topic 1
- `Instruction.md` for Topic 2
- `INSTRUCTIONS.md` for Topic 3
- Root `README.md`

---

### Debugging Assistance
AI assisted in diagnosing and resolving several technical issues during the pretest:

| Issue | AI Contribution |
|---|---|
| Terraform tfstate not found by pipeline | Identified key mismatch between local backend config and pipeline config |
| Pipeline building duplicate AWS resources | Identified missing remote tfstate, guided migration from local to S3 |
| Node group scaling error in pipeline | Identified desired size = 0 conflict with min size = 1 |
| Docker port conflict | Identified existing container occupying port 8080 |

---

## Summary

| Topic | Implementation | Documentation & Annotations | AI Role |
|---|---|---|---|
| Topic 1 — Terraform | Self | AI-assisted | Review & annotation |
| Topic 2 — Dockerfile | Self | AI-assisted | Security advice & annotation |
| Topic 3 — Helm Chart | Self + AI review | AI-assisted | Review, syntax check & docs |
| Topic 4 — CI/CD Pipeline | Self + AI enhancement | AI-assisted | Review, enhance & annotation |
| Topic 5 — GitOps Strategy | N/A (describe only) | AI-assisted | Strategy discussion & summary |
| Topic 6 — Terraform Link | N/A (describe only) | AI-assisted | Risk discussion & summary |

---

## Meta Disclosure

This `AI_DISCLOSURE.md` document itself was also written with AI assistance, based on a review of the full conversation history between myself and Claude throughout this pretest.

**Prompts used:**
- *"請幫忙把我們的談話內容按Topic 來分類, 我們需要提交一份在什麼地方用了AI 的markdown"*

---

