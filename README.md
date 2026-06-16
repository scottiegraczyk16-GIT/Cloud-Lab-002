# Cloud-Lab-002 (AWS Linux VM)
This is an AWS Linux VM created using Terraform and configured using Ansible. 
# Goals
- Understanding the AWS Cloud
- Building another Linux VM in the AWS Cloud
- Figuring out and building applications to monitor and utilize within the AWS Linux VM
# Progress
- Initialized AWS cloud lab environment using Terraform in GitHub Codespaces and configured AWS CLI authentication for programmatic infrastructure deployment ✅
- Built and deployed AWS EC2 Linux instance using Infrastructure as Code (Terraform), including instance configuration, key pair authentication, and security group attachment ✅
- Designed and implemented AWS Security Groups to allow secure SSH (22) and RDP (3389) access, simulating real-world firewall and network access control policies ✅
- Troubleshot Terraform state and AWS dependency issues including resource replacement conflicts, stuck destroys, and state synchronization between AWS and Terraform ✅
- Successfully accessed deployed Linux EC2 instance via SSH and configured Remote Desktop Protocol (XRDP + XFCE) enabling full GUI-based cloud server access ✅