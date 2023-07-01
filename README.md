
# ⚒️ Rancher K8s Terraform

It's a repository with code to deploy a Rancher Server with 3 Nodes K8s using Terraform.

## Repository Structure
```
.
├── src
│   ├── terraform/
│   ├── scripts/
│   ├── k8s/
│   └── utils/
├── .gitignore
└── README.md
```

## Settings

`terraform/*` - Folder for Terraform code

`k8s/*` - Settings files about Kubernetes

`scripts/*` - Scripts to automate some settings

`utils/*` - Folder to put utility files


# Target

This project was thought to resolve the time issue. Setting up the whole environment to study Rancher and Kubernetes in AWS takes a lot of time. So, I made this flow to automate the initial setup and save your time in your study.

## Diagram

![](https://media.discordapp.net/attachments/903283287009685507/1124475036766584942/image.png?width=723&height=676)



## :hammer: Stacks

Developed with:

- [Terraform](https://www.terraform.io)
- [Rancher](https://www.rancher.com)
- [Kubernetes](https://kubernetes.io/pt-br/)
- [Bash Script](https://pt.wikipedia.org/wiki/Bash)
- [AWS](https://aws.amazon.com)


## :books: Requirements

- Has an [**AWS**](https://aws.amazon.com) account.
- Has [**Terraform**](https://www.terraform.io) installed.

## :gear: Starting project
```bash
  # Provisioning infrastructure:
  $ cd src/terraform
  $ terraform init
  $ terraform apply
```
