# ==========================================
# ENVIRONMENT
# ==========================================

env        = "dev"
aws-region = "us-east-1"


# ==========================================
# VPC
# ==========================================

vpc-cidr-block = "10.16.0.0/16"
vpc-name       = "vpc"


# ==========================================
# INTERNET GATEWAY
# ==========================================

igw-name = "igw"


# ==========================================
# PUBLIC SUBNETS
# ==========================================

pub-subnet-count = 3

pub-cidr-block = [
  "10.16.0.0/20",
  "10.16.16.0/20",
  "10.16.32.0/20"
]

pub-availability-zone = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

pub-sub-name = "subnet-public"


# ==========================================
# PRIVATE SUBNETS
# ==========================================

pri-subnet-count = 3

pri-cidr-block = [
  "10.16.128.0/20",
  "10.16.144.0/20",
  "10.16.160.0/20"
]

pri-availability-zone = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

pri-sub-name = "subnet-private"


# ==========================================
# ROUTE TABLES
# ==========================================

public-rt-name  = "public-route-table"
private-rt-name = "private-route-table"


# ==========================================
# NAT GATEWAY / ELASTIC IP
# ==========================================

eip-name = "elasticip-ngw"
ngw-name = "ngw"


# ==========================================
# EKS SECURITY GROUP
# ==========================================

eks-sg = "eks-sg"


# ==========================================
# EKS CLUSTER
# ==========================================

is-eks-cluster-enabled = true

cluster-version = "1.35"
cluster-name    = "eks-cluster"

endpoint-private-access = true
endpoint-public-access  = true


# ==========================================
# ON-DEMAND NODE GROUP
# ==========================================

ondemand_instance_types = ["t8i.small"]

desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "1"


# ==========================================
# SPOT NODE GROUP
# ==========================================

spot_instance_types = ["t8i.small","t3.small"]

desired_capacity_spot = "0"
min_capacity_spot     = "0"
max_capacity_spot     = "1"


# ==========================================
# EKS ADD-ONS
# ==========================================

addons = [
  {
    name    = "vpc-cni"
    version = null
  },
  {
    name    = "coredns"
    version = null
  },
  {
    name    = "kube-proxy"
    version = null
  },
  {
    name    = "aws-ebs-csi-driver"
    version = null
  }
]
