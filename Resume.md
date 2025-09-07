# Alex Freidah  
**DevOps / Infrastructure / Cloud Engineer**  

📞 703-362-3220 | 📧 alex.freidah@gmail.com | 🌐 [github.com/afreidah](https://github.com/afreidah)  

---

## Summary  
DevOps and Infrastructure Engineer with 10+ years of experience automating cloud infrastructure, databases, and CI/CD pipelines. Expertise in AWS, Infrastructure as Code (Terraform, Terragrunt, CDKTF), and configuration management (Chef, Puppet). Strong background managing PostgreSQL environments, developing internal tooling, and implementing security/compliance automation. Comfortable in Ruby, Python, Bash, Go, etc., with a proven track record of improving system reliability, performance, and developer workflows. 12+ years of Linux and Unix-based OS usage.  

---

## Core Skills  
- **Cloud Platforms:** AWS, GCP, Joyent SDC (on-prem cloud)  
- **IaC & Config Mgmt:** Terraform, Terragrunt, CDKTF, Chef, Puppet  
- **Containers & Orchestration:** Kubernetes, Helm, ArgoCD, Nomad, Consul  
- **Databases:** PostgreSQL (admin, replication, failover, migrations, backups); MySQL/MariaDB  
- **Languages:** Go, Python, Ruby, Bash, C  
- **DevOps & Tooling:** CI/CD pipelines, Checkov, Trivy, Terraform test, Snowflake/Snowpark, Jenkins, GitHub/GitLab Actions  
- **Security & Compliance:** Secrets management (OpenBao), VPN clustering (OpenVPN)  

---

## Professional Experience  

### EDO – Infrastructure Engineer  
*May 2022 – Sep 2025 | Los Angeles, CA (Remote)*  
- Automated AWS infrastructure with Terraform/Terragrunt (VPC, SG, EC2, KMS, IAM, etc.).  
- Developed and maintained a fleet of Chef cookbooks.  
- Architected multi-AZ OpenBao secrets cluster with auto-clustering and dynamic unseal.  
- Reverse-engineered OpenVPN into fully automated Chef + Terraform solution with Global Accelerator for region-aware routing to the nearest cluster node.  
- Built internal tooling: **Credentures (Ruby)** and **OpenVPN Health-Checker (Go)**.  
- Built Jenkins pipeline for building/publishing Dockerfiles and initiating vulnerability scans.  
- Led modernization of Terraform/Terragrunt workflows (linting, security scanning, cost analysis, testing, hooks, and pipelines).  
- Built Groovy libraries for dynamically building Jenkins pipelines.  
- Optimized Snowflake process with async + multithreaded Snowpark Python program to reduce processing time from 12 to 5 hours.  

### Optoro – Senior Infrastructure Engineer  
*Mar 2014 – Mar 2022 | Washington, DC (Remote)*  
- Managed PostgreSQL for all services (replication, failover, migrations, WAL, backups).  
- Led the migration of PostgreSQL service databases across environments including to GCP.  
- Contributed to migrations from Puppet → Chef, AWS → On-Prem Joyent SDC, Joyent VM/Zones → Kubernetes, and On-Prem → GCP.  
- Incident response: participated in recovery efforts during major hacker intrusion outage.  
- Built **SOC2 Backup Reporter (Go)** for compliance automation.  
- Provisioned and remotely managed nationwide shipping stations using Clonezilla PXE boot imaging system.  

### AOL – Data Warehouse Operations (DevOps)  
*Nov 2012 – Mar 2014 | Dulles, VA*  
- Supported large-scale data warehouse operations with DevOps automation.  
- Streamlined ETL processes for analytics workloads.  

### TMCI International – Analyst / Developer  
*Jul 2009 – Nov 2012 | Remote*  
- Built software to analyze military healthcare records for duplicates using matching algorithms and bit-flag–based acceptance criteria.  
- Developed ingestion pipelines and SQL update file generation for Oracle CDR database.  
- Wrote **C pthreads program** to parallelize SQL execution, cutting processing times drastically.  
- Built system for automatic duplicate detection on the CDR, increasing corrected TRICARE records from hundreds of thousands to millions annually.  

---

## Projects & Open Source  
- **[VPC Peering Tool (Go/CDKTF)](https://github.com/afreidah/vpc-peering-tool):** Automates AWS VPC peering across accounts/regions with YAML-defined matrix.  
- **[Munchbox](https://github.com/afreidah/munchbox) (Nomad/Consul/OpenBao, in progress):** Homelab project with Nomad + Consul cluster, OpenBao instance, Chef provisioning, CDKTF automation.  
- **[Gredentures](https://github.com/afreidah/credentures) (Go, in progress):** Re-write of Credentures AWS MFA tool in Go as a learning project.  
- **Contribution to the Go Codebase:** Fixed typo in Protobuf library error message discovered via build/test/lint pipeline I designed to publish my service package; patch submitted and merged in Gerrit.  

---

## Education  
**Johns Hopkins University – Peabody Conservatory of Music**  
Bachelor of Music, Classical Guitar Performance  

