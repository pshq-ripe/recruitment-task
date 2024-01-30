# cool-software-dev

## High-Level Approach

- 🌐 **Terraform**: Used to provision the GCP instance with a public IP and pre-configured SSH key.
- ⚙️ **Ansible**: Utilized for configuring the instance, including the installation of necessary dependencies and k3s.
- 🚀 **Helm**: Employed to deploy the whoami application on the k3s cluster.
- 🔄 **ArgoCD**: For continuous deployment to the k3s cluster.
- 🛠️ **GitHub Actions**: To automate the CI/CD pipeline, integrating Terraform, Ansible, and other tools.

---

## File Structure

1. **.github/workflows/**: 
   - Contains your CI/CD pipeline configuration (`ci.yml`) for GitHub Actions.

2. **ansible/**: 
   - Holds your Ansible playbook (`setup.yml`) and dynamic inventory file. The dynamic inventory is generated during the CI/CD pipeline execution.

3. **helm/**: 
   - Contains Helm chart configurations for the whoami application.

4. **terraform/**: 
   - Contains all Terraform-related files for provisioning infrastructure.

5. **.gitignore**: 
   - Ensure to include `.terraform`, `*.tfstate`, and any sensitive files that should not be pushed to the repository.

