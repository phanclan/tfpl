# Terraform Foundational Policies Library

This guides walks you through how to setup the Terraform Foundation Policies Library. Building a new policy from Sentinel can be daunting.

To enable a pre-configured policy, you only need three lines of configuration for policy name, source, and enforcement level.

```
policy "aws-cis-4.1-networking-deny-public-ssh-acl-rules" {
  source = "https://VCS/YOURNAME/REPO/cis/aws/networking/policy/policy.sentinel"
  enforcement_level = "advisory"
}
```

This is much quicker and easier to adopt.

# Terraform Foundational Policies Library
https://github.com/hashicorp/terraform-foundational-policies-library

This repository contains a library of policies that can be used within Terraform Cloud to accelerate your adoption of policy as code. To learn more about the Sentinel language and framework, please review the Sentinel [documentation](https://docs.hashicorp.com/sentinel/).

- - - -

## Table of Contents
- [Prerequisites](#Prerequisites)
- [Documentation](#documentation)
- [Setup & Integration](bear://x-callback-url/open-note?id=5485D86D-9978-47F7-BF65-AF485B0CF496-67314-000C175C101A166D&header=Setup%20%26%20Integration)
- [Version Control System (VCS)](bear://x-callback-url/open-note?id=5485D86D-9978-47F7-BF65-AF485B0CF496-67314-000C175C101A166D&header=Version%20Control%20System%20%28VCS%29)
- [Policy Set Configuration](#policy-set-configuration)
- [Policy Set Management](#policy-set-management)
- [Policy Guides](#policy-guides)
- [Useful Resources](#useful-resources)

- - - -

## Prerequisites

Before you start adopting some of the policies within this library, it is recommended that you do the following:

1. Enable the **Governance and Policy Plan** in Terraform Cloud.
2. Have access to a [supported](https://www.terraform.io/docs/cloud/vcs/index.html#supported-vcs-providers) version control system (VCS) provider.
3. (optional) [Install](https://docs.hashicorp.com/sentinel/intro/getting-started/install/) the Sentinel CLI. The CLI is an excellent tool for familiarizing yourself with the internals of Sentinel and allows you to `apply` and `test` policies outside of the Terraform platform. You can find more information related to the Sentinel CLI in the [Enforce Policy with Sentinel](https://learn.hashicorp.com/terraform?track=sentinel#sentinel) learning track.

> **NOTE:** The **Governance and Policy Plan** is a **paid** plan in Terraform Cloud. You can learn more about changing your payment plan by reviewing the [Changing Your Payment Plan](https://www.terraform.io/docs/cloud/paid.html#changing-your-payment-plan) sections in the Terraform Cloud documentation.  

- - - -

## Documentation

The file and directory structure within this repository has been designed to have a descriptive `ROOT` directory that contains all policies that are related to a given standard. 

* All policies for the **Center for Internet Security Benchmarks** are located in the `cis` directory. 
* Policies are then broken down by cloud service provider (i.e. AWS, Azure and GCP) 
* Then categorized by cloud service (i.e. Compute, Databases, Networking etc.)

Template
```ruby
.
└── ROOT
    └── CLOUD
       └── CATEGORY
           └── POLICY
               └── ...
```

tree Output
```
.
├── cis
│   ├── aws
│   │   └── networking
│   │       ├── README.md
│   │       ├── aws-cis-4.1-networking-deny-public-ssh-acl-rules
│   ├── azure
│   │   ├── compute
│   │   ├── databases
│   │   ├── networking
│   │   └── storage
│   └── gcp
...
│       ├── kubernetes
```


All `CATEGORY` related directories contain a single `README.md` that details all information that is required to assess and enforce a policy in Terraform Cloud. This information includes:
- **Policy name**
- **Description** of the controls that are evaluated
- The **Policy Set configuration** that needs to be added to the `sentinel.hcl` file.

> **Note:** You can find a full list of all available policies in the [Policy Guides](bear://x-callback-url/open-note?id=5485D86D-9978-47F7-BF65-AF485B0CF496-67314-000C175C101A166D&header=Policy%20Guides) section.  

- - - -

## Setup & Integration

Before you can use any of the policies within this library, you will need to configure Terraform Cloud. The following sections detail the high-level steps required to deploy a policy from the foundational policies library. The [Enforce Policy with Sentinel](https://learn.hashicorp.com/terraform?track=sentinel#sentinel) learning track covers the end-to-end process in greater detail. If this is the first time you are setting up a Sentinel policy, we encourage you to familiarize yourself with this track prior to continuing further.

### Version Control System (VCS)
Terraform Cloud provides first-class support for VCS integration. This allows VCS repositories to contain all of the policies and configuration needed to manage Sentinel policy at scale. [Integrating with VCS](https://www.terraform.io/docs/cloud/getting-started/policies.html#integrating-with-vcs) is as simple as:

1. [Connect a VCS Provider to Terraform Cloud](https://www.terraform.io/docs/cloud/vcs/index.html)
2. Create a repository in your VCS provider that will be used as the source of your Policy Set configuration
	* Go to GitHub new repo page: https://github.com/new
	* Repo Name: `tfpl`
3. Clone the source repository to a local directory

```
git clone https://github.com/<YOURNAME>/tfpl.git
cd tfpl
```
	* 	Replace `<YOURNAME>` with your own `username`.

* **NOTE**: 
	* Normally, I would fork the repo and then modify the content. In this case, I will clone the new empty directory, create a `sentinel.hcl` file, and push back up to the repo.
	* The `sentinel.hcl` file actually points to the [original repo](https://github.com/hashicorp/terraform-foundational-policies-library) for the configuration.


### Policy Set Configuration

Once the VCS is integrated with Terraform Cloud, start to configure your **Terraform Policy Set** as follows:

#### Lazy way that enables all policies. 

* Running the commands below will  create the `sentinel.hcl` file. Then it will add, commit, and upload the file to your repo.

```
# Make sure you are in the new repo you created earlier.
curl -sfL https://raw.githubusercontent.com/phanclan/tfpl/master/sentinel.sh | sh -
git add sentinel.hcl && git commit -am "sentinel.hcl" && git push
```

> **Example Snippet**  

See it here: https://raw.githubusercontent.com/phanclan/tfpl/master/sentinel.sh

#### Thorough way - customizing policies to apply

1. Identify a policy from the foundational policies library that should be enforced on a Terraform [Workspace](https://www.terraform.io/docs/cloud/workspaces/index.html). 
	* My sample will have all the policies.
2. Review the policy documentation and copy the configuration snippet for the policy of choice.
3. Create a `sentinel.hcl` configuration file within the local directory for your repository. 
	* The script below.
4. Edit the contents of the `sentinel.hcl` by pasting the configuration snippet into the body of the configuration file.
5. Commit your changes to your local repository content and upload the changes to your remote repository.


### Policy Set Management

Now that the Policy Set is configured, it is time to enforce this configuration on a Terraform Cloud workspace. This is achieved by:

1. Browsing to your Terraform Cloud organization settings.
	* https://app.terraform.io/app/pphan/settings/profile
2. Browse to Policy Sets settings
	* 	https://app.terraform.io/app/pphan/settings/policy-sets
3. Click **Connect a new Policy Set**
4. Connect to a VCS provider
	* Select VCS Provider: `GitHub`
5. Choose a **repository**
	* Select Repo: `<YOURNAME>/tfpl`
4. Configure the Policy **Settings**
	* 💡 Defaults are fine unless you want to customize.
	* Name, source, path, branch 
	* Scope of Policies: Policies enforced on all workspaces
	* Apply the settings

### Test the Configuration

To test the configuration, navigate to the target workspace and queue a new plan. 

* The policy check phase should now appear in the run details.
* The newly created policy will execute and return the state of the policy evaluation (i.e. `Pass` or `Fail`).
* This [image](./images/policy-sets-run.png) shows the output of an example policy evaluation.

- - - -

## Policy Guides

### Center for Internet Security (CIS)
- Amazon Web Services
		- [Networking](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/aws/networking/README.md)
- Microsoft Azure
		- [Compute](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/azure/compute/README.md)
		- [Databases](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/azure/databases/README.md)
		- [Networking](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/azure/networking/README.md)
		- [Storage](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/azure/storage/README.md)
- Google Cloud Platform
		- [Compute](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/gcp/compute/README.md)
		- [Databases](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/gcp/databases/README.md)
		- [Kubernetes](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/gcp/databases/README.mdcis/gcp/kubernetes/README.md)
		- [Networking](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/gcp/databases/README.mdcis/gcp/networking/README.md)
		- [Storage](https://github.com/hashicorp/terraform-foundational-policies-library/blob/master/cis/gcp/databases/README.mdcis/gcp/storage/README.md)

- - - -

## Useful Resources

- [Getting Started with Terraform Cloud](https://www.terraform.io/docs/cloud/getting-started/index.html)
- [Configuring Version Control Access](https://www.terraform.io/docs/cloud/getting-started/vcs.html)
- [Configuring Sentinel Policies](https://www.terraform.io/docs/cloud/getting-started/policies.html)
- [Sentinel Overview](https://www.terraform.io/docs/cloud/sentinel/index.html)
- [Example Policies](https://www.terraform.io/docs/cloud/sentinel/examples.html)
- [Sentinel Documentation](https://docs.hashicorp.com/sentinel/)
- [Sentinel Language](https://docs.hashicorp.com/sentinel/language/)
- [Sentinel Language Specification](https://docs.hashicorp.com/sentinel/language/spec/)

#hashicorp/products/terraform/sentinel
