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

