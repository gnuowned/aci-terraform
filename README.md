## ACI-Terraform 3 tiers application profile

This repo creates a tenant with all the necessary configuration to deploy a three-tier app in Cisco ACI and vSphere.

### Make it work

1. Clone the repo
   ```
   git clone https://github.com/gnuowned/aci-terraform
   cd aci-terraform
   ```
2. Populate provider settings (credentials, APIC URL, and vSphere details) in `main.tf`.
3. Modify the VMM Domain DN in `application_profile.tf` with your VMM-Domain DN.
4. Run the plan and apply
   ```
   terraform plan
   terraform apply
   ```
