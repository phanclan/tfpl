# AWS - NETWORKING
policy "aws-cis-4.1-networking-deny-public-ssh-acl-rules" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/aws/networking/aws-cis-4.1-networking-deny-public-ssh-acl-rules/aws-cis-4.1-networking-deny-public-ssh-acl-rules.sentinel"
  enforcement_level = "advisory"
}
policy "aws-cis-4.2-networking-deny-public-rdp-acl-rules" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/aws/networking/aws-cis-4.2-networking-deny-public-rdp-acl-rules/aws-cis-4.2-networking-deny-public-rdp-acl-rules.sentinel"
  enforcement_level = "advisory"
}
policy "aws-cis-4.3-networking-restrict-all-vpc-traffic-acl-rules" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/aws/networking/aws-cis-4.3-networking-restrict-all-vpc-traffic-acl-rules/aws-cis-4.3-networking-restrict-all-vpc-traffic-acl-rules.sentinel"
  enforcement_level = "advisory"
}

# AZURE - STORAGE
## CIS 3.1: Ensure that 'Secure transfer required' is set to 'Enabled'
policy "azure-cis-3.1-storage-secure-transfer-required-is-enabled" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/storage/azure-cis-3.1-storage-secure-transfer-required-is-enabled/azure-cis-3.1-storage-secure-transfer-required-is-enabled.sentinel"
  enforcement_level = "advisory"
}
## CIS 3.3: Ensure Storage logging is enabled for Queue service for read, write, and delete requests
policy "azure-cis-3.3-storage-queue-logging-is-enabled" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/storage/azure-cis-3.3-storage-queue-logging-is-enabled/azure-cis-3.3-storage-queue-logging-is-enabled.sentinel"
  enforcement_level = "advisory"
}
## CIS 3.6: Ensure that 'Public access level' is set to Private for blob containers
policy "azure-cis-3.6-storage-blob-public-access-level-set-to-private" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/storage/azure-cis-3.6-storage-blob-public-access-level-set-to-private/azure-cis-3.6-storage-blob-public-access-level-set-to-private.sentinel"
  enforcement_level = "advisory"
}
## CIS 3.7: Ensure default network access rule for Storage Accounts is set to deny
policy "azure-cis-3.7-storage-default-network-access-rule-set-to-deny" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/storage/azure-cis-3.7-storage-default-network-access-rule-set-to-deny/azure-cis-3.7-storage-default-network-access-rule-set-to-deny.sentinel"
  enforcement_level = "advisory"
}
## CIS 3.8: Ensure 'Trusted Microsoft Services' is enabled for Storage Account access
policy "azure-cis-3.8-storage-trusted-microsoft-services-is-enabled" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/storage/azure-cis-3.8-storage-trusted-microsoft-services-is-enabled/azure-cis-3.8-storage-trusted-microsoft-services-is-enabled.sentinel"
  enforcement_level = "advisory"
}

# AZURE - NETWORKING
## CIS 6.1: Ensure that RDP access is restricted from the internet
policy "azure-cis-6.1-networking-deny-public-rdp-nsg-rules" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/networking/azure-cis-6.1-networking-deny-public-rdp-nsg-rules/azure-cis-6.1-networking-deny-public-rdp-nsg-rules.sentinel"
  enforcement_level = "advisory"
}
## CIS 6.2: Ensure that SSH access is restricted from the internet
policy "azure-cis-6.2-networking-deny-public-ssh-nsg-rules" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/networking/azure-cis-6.2-networking-deny-public-ssh-nsg-rules/azure-cis-6.2-networking-deny-public-ssh-nsg-rules.sentinel"
  enforcement_level = "advisory"
}
## CIS 6.3: Ensure no SQL Databases allow ingress 0.0.0.0/0 (ANY IP)
policy "azure-cis-6.3-networking-deny-any-sql-database-ingress" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/networking/azure-cis-6.3-networking-deny-any-sql-database-ingress/azure-cis-6.3-networking-deny-any-sql-database-ingress.sentinel"
  enforcement_level = "advisory"
}
## CIS 6.4: Ensure that Network Security Group Flow Log retention period is 'greater than 90 days'
policy "azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/networking/azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period/azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period.sentinel"
  enforcement_level = "advisory"
}

# AZURE - COMPUTE
## CIS 7.1: Ensure that all managed disks (OS and Data) are encrypted
policy "azure-cis-7.1-compute-managed-disk-encryption-is-enabled" {
source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/compute/azure-cis-7.1-compute-managed-disk-encryption-is-enabled/azure-cis-7.1-compute-managed-disk-encryption-is-enabled.sentinel"
enforcement_level = "advisory"
}
## CIS 7.4: Ensure that only approved extensions are installed
policy "azure-cis-7.4-compute-only-approved-extensions-are-installed" {
source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/compute/azure-cis-7.4-compute-only-approved-extensions-are-installed/azure-cis-7.4-compute-only-approved-extensions-are-installed.sentinel"
enforcement_level = "advisory"
}

# GCP - COMPUTE
## CIS 4.2: Ensure "Block Project-wide SSH keys" enabled for VM instances
policy "gcp-cis-4.2-compute-block-project-wide-ssh-keys-enabled-for-vm-instances" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/compute/gcp-cis-4.2-compute-block-project-wide-ssh-keys-enabled-for-vm-instances/gcp-cis-4.2-compute-block-project-wide-ssh-keys-enabled-for-vm-instances.sentinel"
    enforcement_level = "advisory"
}
## CIS 4.3: Ensure oslogin is enabled for a Project
policy "gcp-cis-4.3-compute-ensure-oslogin-is-enabled-for-a-project" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/compute/gcp-cis-4.3-compute-ensure-oslogin-is-enabled-for-a-project/gcp-cis-4.3-compute-ensure-oslogin-is-enabled-for-a-project.sentinel"
    enforcement_level = "advisory"
}
## CIS 4.4: Ensure 'Enable connecting to serial ports' is not enabled for VM Instance
policy "gcp-cis-4.4-compute-enable-connecting-to-serial-ports-is-not-enabled-for-vm-instance" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/compute/gcp-cis-4.4-compute-enable-connecting-to-serial-ports-is-not-enabled-for-vm-instance/gcp-cis-4.4-compute-enable-connecting-to-serial-ports-is-not-enabled-for-vm-instance.sentinel"
    enforcement_level = "advisory"
}
## CIS 4.5: Ensure that IP forwarding is not enabled on Instances
policy "gcp-cis-4.5-compute-ensure-that-ip-forwarding-is-not-enabled-on-instances" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/compute/gcp-cis-4.5-compute-ensure-that-ip-forwarding-is-not-enabled-on-instances/gcp-cis-4.5-compute-ensure-that-ip-forwarding-is-not-enabled-on-instances.sentinel"
    enforcement_level = "advisory"
}
## CIS 4.6: Ensure VM disks for critical VMs are encrypted with Customer- Supplied Encryption Keys (CSEK)
policy "gcp-cis-4.6-compute-ensure-vm-disks-for-critical-vms-are-encrypted-with-customer-supplied-encryption-keys" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/compute/gcp-cis-4.6-compute-ensure-vm-disks-for-critical-vms-are-encrypted-with-customer-supplied-encryption-keys/gcp-cis-4.6-compute-ensure-vm-disks-for-critical-vms-are-encrypted-with-customer-supplied-encryption-keys.sentinel"
    enforcement_level = "advisory"
}

# GCP - DATABASES
## CIS 6.1: Ensure that Cloud SQL database instance requires all incoming connections to use SSL
policy "gcp-cis-6.1-databases-cloud-sql-databases-instance-requires-all-incoming-connections-to-use-ssl" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/databases/gcp-cis-6.1-databases-cloud-sql-databases-instance-requires-all-incoming-connections-to-use-ssl/gcp-cis-6.1-databases-cloud-sql-databases-instance-requires-all-incoming-connections-to-use-ssl.sentinel"
    enforcement_level = "advisory"
}
## CIS 6.2: Ensure that Cloud SQL database Instances are not open to the world
policy "gcp-cis-6.2-databases-cloud-sql-databases-instances-are-not-open-to-the-world" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/databases/gcp-cis-6.2-databases-cloud-sql-databases-instances-are-not-open-to-the-world/gcp-cis-6.2-databases-cloud-sql-databases-instances-are-not-open-to-the-world.sentinel"
    enforcement_level = "advisory"
}

# GCP - KUBERNETES
## CIS 7.1: Ensure Stackdriver Logging is set to Enabled on Kubernetes Engine Clusters
policy "gcp-cis-7.1-kubernetes-ensure-stackdriver-logging-is-set-to-enabled-on-kubernetes-engine-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.1-kubernetes-ensure-stackdriver-logging-is-set-to-enabled-on-kubernetes-engine-clusters/gcp-cis-7.1-kubernetes-ensure-stackdriver-logging-is-set-to-enabled-on-kubernetes-engine-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.2: Ensure Stackdriver Monitoring is set to Enabled on Kubernetes Engine Clusters
policy "gcp-cis-7.2-kubernetes-ensure-stackdriver-monitoring-is-set-to-enabled-on-kubernetes-engine-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.2-kubernetes-ensure-stackdriver-monitoring-is-set-to-enabled-on-kubernetes-engine-clusters/gcp-cis-7.2-kubernetes-ensure-stackdriver-monitoring-is-set-to-enabled-on-kubernetes-engine-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.3: Ensure Legacy Authorization is set to Disabled on Kubernetes Engine Clusters
policy "gcp-cis-7.3-kubernetes-ensure-legacy-authorization-is-set-to-disabled-on-kubernetes-engine-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.3-kubernetes-ensure-legacy-authorization-is-set-to-disabled-on-kubernetes-engine-clusters/gcp-cis-7.3-kubernetes-ensure-legacy-authorization-is-set-to-disabled-on-kubernetes-engine-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.4: Ensure Master authorized networks is set to Enabled on Kubernetes Engine Clusters
policy "gcp-cis-7.4-kubernetes-ensure-master-authorized-networks-is-set-to-enabled-on-kubernetes-engine-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.4-kubernetes-ensure-master-authorized-networks-is-set-to-enabled-on-kubernetes-engine-clusters/gcp-cis-7.4-kubernetes-ensure-master-authorized-networks-is-set-to-enabled-on-kubernetes-engine-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.5: Ensure Kubernetes Clusters are configured with Labels
policy "gcp-cis-7.5-kubernetes-ensure-kubernetes-clusters-are-configured-with-labels" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.5-kubernetes-ensure-kubernetes-clusters-are-configured-with-labels/gcp-cis-7.5-kubernetes-ensure-kubernetes-clusters-are-configured-with-labels.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.7: Ensure Automatic node repair is enabled for Kubernetes Clusters
policy "gcp-cis-7.7-kubernetes-ensure-automatic-node-repair-is-enabled-for-kubernetes-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.7-kubernetes-ensure-automatic-node-repair-is-enabled-for-kubernetes-clusters/gcp-cis-7.7-kubernetes-ensure-automatic-node-repair-is-enabled-for-kubernetes-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.8: Ensure Automatic node upgrades is enabled on Kubernetes Engine Clusters nodes
policy "gcp-cis-7.8-kubernetes-ensure-automatic-node-upgrades-is-enabled-on-kubernetes-engine-clusters-nodes" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.8-kubernetes-ensure-automatic-node-upgrades-is-enabled-on-kubernetes-engine-clusters-nodes/gcp-cis-7.8-kubernetes-ensure-automatic-node-upgrades-is-enabled-on-kubernetes-engine-clusters-nodes.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.9: Ensure Container-Optimized OS (cos) is used for Kubernetes Engine Clusters Node image
policy "gcp-cis-7.9-kubernetes-ensure-container-optimized-osis-used-for-kubernetes-engine-clusters-node-image" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.9-kubernetes-ensure-container-optimized-osis-used-for-kubernetes-engine-clusters-node-image/gcp-cis-7.9-kubernetes-ensure-container-optimized-osis-used-for-kubernetes-engine-clusters-node-image.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.10: Ensure Basic Authentication is disabled on Kubernetes Engine Clusters
policy "gcp-cis-7.10-kubernetes-ensure-basic-authentication-is-disabled-on-kubernetes-engine-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.10-kubernetes-ensure-basic-authentication-is-disabled-on-kubernetes-engine-clusters/gcp-cis-7.10-kubernetes-ensure-basic-authentication-is-disabled-on-kubernetes-engine-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.11: Ensure Network policy is enabled on Kubernetes Engine Clusters
policy "gcp-cis-7.11-kubernetes-ensure-network-policy-is-enabled-on-kubernetes-engine-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.11-kubernetes-ensure-network-policy-is-enabled-on-kubernetes-engine-clusters/gcp-cis-7.11-kubernetes-ensure-network-policy-is-enabled-on-kubernetes-engine-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.12: Ensure Kubernetes Cluster is created with Client Certificate enabled
policy "gcp-cis-7.12-kubernetes-ensure-kubernetes-cluster-is-created-with-client-certificate-enabled" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.12-kubernetes-ensure-kubernetes-cluster-is-created-with-client-certificate-enabled/gcp-cis-7.12-kubernetes-ensure-kubernetes-cluster-is-created-with-client-certificate-enabled.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.13: Ensure Kubernetes Cluster is created with Alias IP ranges enabled
policy "gcp-cis-7.13-kubernetes-ensure-kubernetes-cluster-is-created-with-alias-ip-ranges-enabled" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.13-kubernetes-ensure-kubernetes-cluster-is-created-with-alias-ip-ranges-enabled/gcp-cis-7.13-kubernetes-ensure-kubernetes-cluster-is-created-with-alias-ip-ranges-enabled.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.14: Ensure PodSecurityPolicy controller is enabled on the Kubernetes Engine Clusters
policy "gcp-cis-7.14-kubernetes-ensure-podsecuritypolicy-controller-is-enabled-on-the-kubernetes-engine-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.14-kubernetes-ensure-podsecuritypolicy-controller-is-enabled-on-the-kubernetes-engine-clusters/gcp-cis-7.14-kubernetes-ensure-podsecuritypolicy-controller-is-enabled-on-the-kubernetes-engine-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.15: Ensure Kubernetes Cluster is created with Private cluster enabled
policy "gcp-cis-7.15-kubernetes-ensure-kubernetes-cluster-is-created-with-private-cluster-enabled" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.15-kubernetes-ensure-kubernetes-cluster-is-created-with-private-cluster-enabled/gcp-cis-7.15-kubernetes-ensure-kubernetes-cluster-is-created-with-private-cluster-enabled.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.17: Ensure default Service account is not used for Project access in Kubernetes Clusters
policy "gcp-cis-7.17-kubernetes-ensure-default-service-account-is-not-used-for-project-access-in-kubernetes-clusters" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.17-kubernetes-ensure-default-service-account-is-not-used-for-project-access-in-kubernetes-clusters/gcp-cis-7.17-kubernetes-ensure-default-service-account-is-not-used-for-project-access-in-kubernetes-clusters.sentinel"
    enforcement_level = "advisory"
}
## CIS 7.18: Ensure Kubernetes Clusters created with limited service account Access scopes for Project access
policy "gcp-cis-7.18-kubernetes-ensure-kubernetes-clusters-created-with-limited-service-account-access-scopes-for-project-access" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/kubernetes/gcp-cis-7.18-kubernetes-ensure-kubernetes-clusters-created-with-limited-service-account-access-scopes-for-project-access/gcp-cis-7.18-kubernetes-ensure-kubernetes-clusters-created-with-limited-service-account-access-scopes-for-project-access.sentinel"
    enforcement_level = "advisory"
}
