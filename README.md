# Terraform Multi-Environment Example

This project demonstrates how to manage multiple environments with Terraform by separating:

- reusable infrastructure code (`src/`)
- environment-specific configuration (`envs/dev`, `envs/prod`)

## Project Goal

The goal is to show a simple and clean pattern to deploy the same infrastructure to different environments (for example `dev` and `prod`) while keeping:

- one shared module for infrastructure logic
- one Terraform root configuration per environment
- one remote Terraform state file per environment

## Repository Structure

```text
.
|- src/
|  |- main.tf
|  `- variables.tf
|- envs/
|  |- dev/
|  |  |- main.tf
|  |  `- provider.tf
|  `- prod/
|     |- main.tf
|     `- provider.tf
`- README.md
```

## How It Works

1. The `src/` folder contains the reusable module logic (here: an Azure Resource Group).
2. Each environment folder (`envs/dev`, `envs/prod`) calls that module with its own values.
3. Each environment has its own backend state key:
	- `dev.tfstate` for development
	- `prod.tfstate` for production

This ensures environments are isolated and can be planned/applied independently.

## Prerequisites

- Terraform installed
- Azure credentials configured (for example with `az login`)
- Access to the Azure Storage Account used for Terraform backend state

## Usage

### Deploy to Dev

```powershell
cd envs/dev
terraform init
terraform plan
terraform apply
```

### Deploy to Prod

```powershell
cd envs/prod
terraform init
terraform plan
terraform apply
```

## Why This Pattern Is Useful

- Reduces duplication by centralizing resources in `src/`
- Keeps environment settings explicit and isolated
- Makes promotion workflows easier (`dev` first, then `prod`)
- Avoids state collisions with separate backend keys per environment
