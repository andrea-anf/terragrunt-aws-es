# ELASTICSEARCH VARIABLES

variable "security_groups" {
    description = "List of security group IDs to be allowed to connect to the cluster"
    type = list(string)
    default = []
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
    default = ""
}

variable "subnet_ids" {
    description = "VPC Subnet IDs"
    type = list(string)
    default = []
}

variable "availability_zones" {
    description = "Availability Zones for the domain to use"
    type = list(string)
    default = []
}

variable "environment" {
    description = "Name of environment (e.g. eu-west-1, dev, ...)"
    type = string
    default = ""
}

variable "project" {
    description = "Name of the project"
    type = string
    default = ""
}

variable "zone_awareness_enabled" {
    description = "Enable zone awareness for Elasticsearch cluster"
    type = bool
    default = false
}

variable "encrypt_at_rest_enabled" {
    description = "Whether to enable encryption at rest"
    type = bool
    default = false
}

variable "elasticsearch_version" {
    description = "Version of Elasticsearch to deploy (e.g. 7.4, 7.1, 6.8, ...)"
    type = string
    default = "6.5"
}

variable "instance_type" {
    description = "Elasticsearch instance type for data nodes in the cluster"
    type = string
    default = "t2.small.elasticsearch"
}

variable "instance_count" {
    description = "Number of data nodes in the cluster"
    type = number
    default = 2
}

variable "ebs_volume_size" {
    description = "EBS volumes for data storage in GB"
    type = number
    default = 10
}

variable "automated_snapshot_start_hour" {
    description = "Hour at which automated snapshots are taken, in UTC"
    type = number
    default = 2
}




#SECURITY GROUP VARIABLES - INGRESS

variable "sg_ingress_from_port" {
    description = "Start of the port range"
    type = number
    default = 443
}

variable "sg_ingress_to_port" {
    description = "End of the port range"
    type = number
    default = 443
}

variable "sg_ingress_protocol" {
    description = "Protocol to use"
    type = string
    default = "tcp"
}

variable "sg_ingress_cidr_blocks" {
    description = "(Optional) List of CIDR blocks"
    type = list(string)
    default = ["0.0.0.0/0"]
}




#SECURITY GROUP VARIABLES - INGRESS

variable "sg_egress_from_port" {
    description = "Start of the port range"
    type = number
    default = 0
}

variable "sg_egress_to_port" {
    description = "End of the port range"
    type = number
    default = 0
}

variable "sg_egress_protocol" {
    description = "Protocol to use"
    type = string
    default = "-1"
}

variable "sg_egress_cidr_blocks" {
    description = "(Optional) List of CIDR blocks"
    type = list(string)
    default = ["0.0.0.0/0"]
}
