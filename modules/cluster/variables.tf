variable "cluster_name" {
  type = string
}

# Worker Nodes
variable "desired_number_of_nodes" {
  description = "The number of worker nodes to use for the cluster. Defaults to 3"
  type        = number
  default     = 3
}

variable "min_number_of_nodes" {
  description = "The minimum number of worker nodes to use for the cluster. Defaults to 3"
  type        = number
  default     = 3
}

variable "max_number_of_nodes" {
  description = "The maximum number of worker nodes to use for the cluster. Defaults to 5"
  type        = number
  default     = 5
}

variable "worker_nodes_instance_types" {
  description  = "The instance type to use for the cluster's worker nodes. Defaults to m5.large"
  type         = string
  default      = "m5.large"
}

# VPC
variable "vpc_name" {
  description  = "The name of the VPC to be created for the cluster"
  type         = string
  default      = "tf-vpc-eks"
}

variable "vpc_subnets" {
  description = "The subnet CIDR block to use in the created VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_cidr_block" {
  description = "The vpc CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}


// ----------------------------------------------------------------------------
// Flag Variables
// ----------------------------------------------------------------------------
variable "enable_logs_storage" {
  description = "Flag to enable or disable long term storage for logs"
  type        = bool
  default     = true
}

variable "enable_reports_storage" {
  description = "Flag to enable or disable long term storage for reports"
  type        = bool
  default     = true
}

variable "enable_repository_storage" {
  description = "Flag to enable or disable the repository bucket storage"
  type        = bool
  default     = true
}

variable "create_vault_resources" {
  description = "Flag to enable or disable the creation of Vault resources by Terraform"
  type        = bool
  default     = false
}