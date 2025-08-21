# 🚀 VoIP FreePBX Deployment on GCP with Terraform

This project demonstrates how to deploy a **FreePBX + Asterisk VoIP server** on **Google Cloud Platform (GCP)** using **Terraform**.  
It provisions the infrastructure, installs FreePBX, configures SIP/VoIP networking, and allows external softphones (e.g., Zoiper) to register and test calls.

---

## 📌 Project Overview
- **Cloud Provider:** Google Cloud (GCP)  
- **IaC Tool:** Terraform  
- **VoIP Platform:** FreePBX 17 + Asterisk 20  
- **Instance OS:** Debian (GCP VM)  
- **Softphone Tested:** Zoiper (SIP extension)  
- **Firewall Rules:** SIP (UDP 5060) + RTP (UDP 10000–20000) opened  

---

## 🛠️ Features
- Automated VM provisioning with Terraform  
- FreePBX + Asterisk installed and configured  
- SIP extensions setup for softphone clients  
- GCP firewall rules for VoIP traffic  
- Secure access to the FreePBX web interface  

---

## 📂 Repository Structure
voip-gcp-terraform/
├── main.tf # Terraform configuration for GCP VM + firewall
├── variables.tf # Input variables
├── outputs.tf # Terraform outputs (IP, etc.)
├── provider.tf # Google provider definition
├── README.md # Project documentation
└── .gitignore # Ignore Terraform states & provider binaries



---

## ⚡ Quick Start

### 1️⃣ Clone the repo
```bash
git clone https://github.com/HaidiZakaria/voip-freepbx-gcp.git
cd voip-freepbx-gcp

2️⃣ Initialize Terraform
terraform init

3️⃣ Deploy Infrastructure
terraform apply

➡️ This provisions a GCP VM with FreePBX installed.

4️⃣ Access FreePBX UI

Open browser: http://<EXTERNAL_VM_IP>/admin

Login with FreePBX admin credentials

5️⃣ Configure SIP Extensions

Add a new extension inside FreePBX

Use Zoiper (or any SIP client) with:

Host: <EXTERNAL_VM_IP>

Port: 5060

Username/Password: (from FreePBX extension)


🔒 Firewall Rules

Terraform automatically creates:

UDP 5060 → SIP signaling

UDP 10000–20000 → RTP (media streams)


✅ Testing

Register Zoiper with your extension credentials

Place a test call between two extensions

📌 Notes

Do not commit .terraform/ or .tfstate files

GCP charges apply → destroy resources when done:

terraform destroy


👤 Author

Haidi Zakaria
Cloud & Infrastructure Engineer | VoIP Enthusiast
