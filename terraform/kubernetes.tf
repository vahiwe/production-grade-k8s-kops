locals {
  cluster_name                                       = "k8s.shadowinc.xyz"
  iam_openid_connect_provider_arn                    = aws_iam_openid_connect_provider.k8s-shadowinc-xyz.arn
  iam_openid_connect_provider_issuer                 = "kops-476621737173.s3.us-east-1.amazonaws.com/k8s.shadowinc.xyz/discovery/k8s.shadowinc.xyz"
  kube-system-aws-cloud-controller-manager_role_arn  = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-k8s-shadowinc-xyz.arn
  kube-system-aws-cloud-controller-manager_role_name = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-k8s-shadowinc-xyz.name
  kube-system-aws-load-balancer-controller_role_arn  = aws_iam_role.aws-load-balancer-controller-kube-system-sa-k8s-shadowinc-xyz.arn
  kube-system-aws-load-balancer-controller_role_name = aws_iam_role.aws-load-balancer-controller-kube-system-sa-k8s-shadowinc-xyz.name
  kube-system-cert-manager_role_arn                  = aws_iam_role.cert-manager-kube-system-sa-k8s-shadowinc-xyz.arn
  kube-system-cert-manager_role_name                 = aws_iam_role.cert-manager-kube-system-sa-k8s-shadowinc-xyz.name
  kube-system-dns-controller_role_arn                = aws_iam_role.dns-controller-kube-system-sa-k8s-shadowinc-xyz.arn
  kube-system-dns-controller_role_name               = aws_iam_role.dns-controller-kube-system-sa-k8s-shadowinc-xyz.name
  kube-system-ebs-csi-controller-sa_role_arn         = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-k8s-shadowinc-xyz.arn
  kube-system-ebs-csi-controller-sa_role_name        = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-k8s-shadowinc-xyz.name
  master_autoscaling_group_ids                       = [aws_autoscaling_group.control-plane-us-east-1a-masters-k8s-shadowinc-xyz.id]
  master_security_group_ids                          = [aws_security_group.masters-k8s-shadowinc-xyz.id]
  masters_role_arn                                   = aws_iam_role.masters-k8s-shadowinc-xyz.arn
  masters_role_name                                  = aws_iam_role.masters-k8s-shadowinc-xyz.name
  node_autoscaling_group_ids                         = [aws_autoscaling_group.nodes-us-east-1a-k8s-shadowinc-xyz.id, aws_autoscaling_group.nodes-us-east-1b-k8s-shadowinc-xyz.id, aws_autoscaling_group.nodes-us-east-1c-k8s-shadowinc-xyz.id]
  node_security_group_ids                            = [aws_security_group.nodes-k8s-shadowinc-xyz.id]
  node_subnet_ids                                    = [aws_subnet.us-east-1a-k8s-shadowinc-xyz.id, aws_subnet.us-east-1b-k8s-shadowinc-xyz.id, aws_subnet.us-east-1c-k8s-shadowinc-xyz.id]
  nodes_role_arn                                     = aws_iam_role.nodes-k8s-shadowinc-xyz.arn
  nodes_role_name                                    = aws_iam_role.nodes-k8s-shadowinc-xyz.name
  region                                             = "us-east-1"
  route_table_public_id                              = aws_route_table.k8s-shadowinc-xyz.id
  subnet_us-east-1a_id                               = aws_subnet.us-east-1a-k8s-shadowinc-xyz.id
  subnet_us-east-1b_id                               = aws_subnet.us-east-1b-k8s-shadowinc-xyz.id
  subnet_us-east-1c_id                               = aws_subnet.us-east-1c-k8s-shadowinc-xyz.id
  vpc_cidr_block                                     = aws_vpc.k8s-shadowinc-xyz.cidr_block
  vpc_id                                             = aws_vpc.k8s-shadowinc-xyz.id
  vpc_ipv6_cidr_block                                = aws_vpc.k8s-shadowinc-xyz.ipv6_cidr_block
  vpc_ipv6_cidr_length                               = local.vpc_ipv6_cidr_block == null ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

output "cluster_name" {
  value = "k8s.shadowinc.xyz"
}

output "iam_openid_connect_provider_arn" {
  value = aws_iam_openid_connect_provider.k8s-shadowinc-xyz.arn
}

output "iam_openid_connect_provider_issuer" {
  value = "kops-476621737173.s3.us-east-1.amazonaws.com/k8s.shadowinc.xyz/discovery/k8s.shadowinc.xyz"
}

output "kube-system-aws-cloud-controller-manager_role_arn" {
  value = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-k8s-shadowinc-xyz.arn
}

output "kube-system-aws-cloud-controller-manager_role_name" {
  value = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-k8s-shadowinc-xyz.name
}

output "kube-system-aws-load-balancer-controller_role_arn" {
  value = aws_iam_role.aws-load-balancer-controller-kube-system-sa-k8s-shadowinc-xyz.arn
}

output "kube-system-aws-load-balancer-controller_role_name" {
  value = aws_iam_role.aws-load-balancer-controller-kube-system-sa-k8s-shadowinc-xyz.name
}

output "kube-system-cert-manager_role_arn" {
  value = aws_iam_role.cert-manager-kube-system-sa-k8s-shadowinc-xyz.arn
}

output "kube-system-cert-manager_role_name" {
  value = aws_iam_role.cert-manager-kube-system-sa-k8s-shadowinc-xyz.name
}

output "kube-system-dns-controller_role_arn" {
  value = aws_iam_role.dns-controller-kube-system-sa-k8s-shadowinc-xyz.arn
}

output "kube-system-dns-controller_role_name" {
  value = aws_iam_role.dns-controller-kube-system-sa-k8s-shadowinc-xyz.name
}

output "kube-system-ebs-csi-controller-sa_role_arn" {
  value = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-k8s-shadowinc-xyz.arn
}

output "kube-system-ebs-csi-controller-sa_role_name" {
  value = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-k8s-shadowinc-xyz.name
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.control-plane-us-east-1a-masters-k8s-shadowinc-xyz.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-k8s-shadowinc-xyz.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-k8s-shadowinc-xyz.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-k8s-shadowinc-xyz.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-us-east-1a-k8s-shadowinc-xyz.id, aws_autoscaling_group.nodes-us-east-1b-k8s-shadowinc-xyz.id, aws_autoscaling_group.nodes-us-east-1c-k8s-shadowinc-xyz.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-k8s-shadowinc-xyz.id]
}

output "node_subnet_ids" {
  value = [aws_subnet.us-east-1a-k8s-shadowinc-xyz.id, aws_subnet.us-east-1b-k8s-shadowinc-xyz.id, aws_subnet.us-east-1c-k8s-shadowinc-xyz.id]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-k8s-shadowinc-xyz.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-k8s-shadowinc-xyz.name
}

output "region" {
  value = "us-east-1"
}

output "route_table_public_id" {
  value = aws_route_table.k8s-shadowinc-xyz.id
}

output "subnet_us-east-1a_id" {
  value = aws_subnet.us-east-1a-k8s-shadowinc-xyz.id
}

output "subnet_us-east-1b_id" {
  value = aws_subnet.us-east-1b-k8s-shadowinc-xyz.id
}

output "subnet_us-east-1c_id" {
  value = aws_subnet.us-east-1c-k8s-shadowinc-xyz.id
}

output "vpc_cidr_block" {
  value = aws_vpc.k8s-shadowinc-xyz.cidr_block
}

output "vpc_id" {
  value = aws_vpc.k8s-shadowinc-xyz.id
}

output "vpc_ipv6_cidr_block" {
  value = aws_vpc.k8s-shadowinc-xyz.ipv6_cidr_block
}

output "vpc_ipv6_cidr_length" {
  value = local.vpc_ipv6_cidr_block == null ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "control-plane-us-east-1a-masters-k8s-shadowinc-xyz" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-us-east-1a-masters-k8s-shadowinc-xyz.id
    version = aws_launch_template.control-plane-us-east-1a-masters-k8s-shadowinc-xyz.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-us-east-1a.masters.k8s.shadowinc.xyz"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.shadowinc.xyz"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-us-east-1a.masters.k8s.shadowinc.xyz"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.shadowinc.xyz"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-k8s-shadowinc-xyz.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1a-k8s-shadowinc-xyz" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1a-k8s-shadowinc-xyz.id
    version = aws_launch_template.nodes-us-east-1a-k8s-shadowinc-xyz.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1a.k8s.shadowinc.xyz"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.shadowinc.xyz"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1a.k8s.shadowinc.xyz"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.shadowinc.xyz"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-k8s-shadowinc-xyz.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1b-k8s-shadowinc-xyz" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1b-k8s-shadowinc-xyz.id
    version = aws_launch_template.nodes-us-east-1b-k8s-shadowinc-xyz.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1b.k8s.shadowinc.xyz"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.shadowinc.xyz"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1b.k8s.shadowinc.xyz"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.shadowinc.xyz"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1b-k8s-shadowinc-xyz.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1c-k8s-shadowinc-xyz" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1c-k8s-shadowinc-xyz.id
    version = aws_launch_template.nodes-us-east-1c-k8s-shadowinc-xyz.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 0
  metrics_granularity   = "1Minute"
  min_size              = 0
  name                  = "nodes-us-east-1c.k8s.shadowinc.xyz"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "k8s.shadowinc.xyz"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1c.k8s.shadowinc.xyz"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/k8s.shadowinc.xyz"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1c-k8s-shadowinc-xyz.id]
}

resource "aws_ebs_volume" "a-etcd-events-k8s-shadowinc-xyz" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "a.etcd-events.k8s.shadowinc.xyz"
    "k8s.io/etcd/events"                      = "a/a"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-k8s-shadowinc-xyz" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "a.etcd-main.k8s.shadowinc.xyz"
    "k8s.io/etcd/main"                        = "a/a"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_iam_instance_profile" "masters-k8s-shadowinc-xyz" {
  name = "masters.k8s.shadowinc.xyz"
  role = aws_iam_role.masters-k8s-shadowinc-xyz.name
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "masters.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-k8s-shadowinc-xyz" {
  name = "nodes.k8s.shadowinc.xyz"
  role = aws_iam_role.nodes-k8s-shadowinc-xyz.name
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "nodes.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
}

resource "aws_iam_openid_connect_provider" "k8s-shadowinc-xyz" {
  client_id_list = ["amazonaws.com"]
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
  thumbprint_list = ["9e99a48a9960b14926bb7f3b02e22da2b0ab7280", "a9d53002e97e00e043244f3d170d6f4c414104fd"]
  url             = "https://kops-476621737173.s3.us-east-1.amazonaws.com/k8s.shadowinc.xyz/discovery/k8s.shadowinc.xyz"
}

resource "aws_iam_role" "aws-cloud-controller-manager-kube-system-sa-k8s-shadowinc-xyz" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_aws-cloud-controller-manager.kube-system.sa.k8s.shadowinc.xyz_policy")
  name               = "aws-cloud-controller-manager.kube-system.sa.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "aws-cloud-controller-manager.kube-system.sa.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
    "service-account.kops.k8s.io/name"        = "aws-cloud-controller-manager"
    "service-account.kops.k8s.io/namespace"   = "kube-system"
  }
}

resource "aws_iam_role" "aws-load-balancer-controller-kube-system-sa-k8s-shadowinc-xyz" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_aws-load-balancer-controller.kube-system.sa.k8s.shadowinc.xyz_policy")
  name               = "aws-load-balancer-controller.kube-system.sa.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "aws-load-balancer-controller.kube-system.sa.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
    "service-account.kops.k8s.io/name"        = "aws-load-balancer-controller"
    "service-account.kops.k8s.io/namespace"   = "kube-system"
  }
}

resource "aws_iam_role" "cert-manager-kube-system-sa-k8s-shadowinc-xyz" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_cert-manager.kube-system.sa.k8s.shadowinc.xyz_policy")
  name               = "cert-manager.kube-system.sa.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "cert-manager.kube-system.sa.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
    "service-account.kops.k8s.io/name"        = "cert-manager"
    "service-account.kops.k8s.io/namespace"   = "kube-system"
  }
}

resource "aws_iam_role" "dns-controller-kube-system-sa-k8s-shadowinc-xyz" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_dns-controller.kube-system.sa.k8s.shadowinc.xyz_policy")
  name               = "dns-controller.kube-system.sa.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "dns-controller.kube-system.sa.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
    "service-account.kops.k8s.io/name"        = "dns-controller"
    "service-account.kops.k8s.io/namespace"   = "kube-system"
  }
}

resource "aws_iam_role" "ebs-csi-controller-sa-kube-system-sa-k8s-shadowinc-xyz" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_ebs-csi-controller-sa.kube-system.sa.k8s.shadowinc.xyz_policy")
  name               = "ebs-csi-controller-sa.kube-system.sa.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "ebs-csi-controller-sa.kube-system.sa.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
    "service-account.kops.k8s.io/name"        = "ebs-csi-controller-sa"
    "service-account.kops.k8s.io/namespace"   = "kube-system"
  }
}

resource "aws_iam_role" "masters-k8s-shadowinc-xyz" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.k8s.shadowinc.xyz_policy")
  name               = "masters.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "masters.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
}

resource "aws_iam_role" "nodes-k8s-shadowinc-xyz" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.k8s.shadowinc.xyz_policy")
  name               = "nodes.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "nodes.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
}

resource "aws_iam_role_policy" "aws-cloud-controller-manager-kube-system-sa-k8s-shadowinc-xyz" {
  name   = "aws-cloud-controller-manager.kube-system.sa.k8s.shadowinc.xyz"
  policy = file("${path.module}/data/aws_iam_role_policy_aws-cloud-controller-manager.kube-system.sa.k8s.shadowinc.xyz_policy")
  role   = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-k8s-shadowinc-xyz.name
}

resource "aws_iam_role_policy" "aws-load-balancer-controller-kube-system-sa-k8s-shadowinc-xyz" {
  name   = "aws-load-balancer-controller.kube-system.sa.k8s.shadowinc.xyz"
  policy = file("${path.module}/data/aws_iam_role_policy_aws-load-balancer-controller.kube-system.sa.k8s.shadowinc.xyz_policy")
  role   = aws_iam_role.aws-load-balancer-controller-kube-system-sa-k8s-shadowinc-xyz.name
}

resource "aws_iam_role_policy" "cert-manager-kube-system-sa-k8s-shadowinc-xyz" {
  name   = "cert-manager.kube-system.sa.k8s.shadowinc.xyz"
  policy = file("${path.module}/data/aws_iam_role_policy_cert-manager.kube-system.sa.k8s.shadowinc.xyz_policy")
  role   = aws_iam_role.cert-manager-kube-system-sa-k8s-shadowinc-xyz.name
}

resource "aws_iam_role_policy" "dns-controller-kube-system-sa-k8s-shadowinc-xyz" {
  name   = "dns-controller.kube-system.sa.k8s.shadowinc.xyz"
  policy = file("${path.module}/data/aws_iam_role_policy_dns-controller.kube-system.sa.k8s.shadowinc.xyz_policy")
  role   = aws_iam_role.dns-controller-kube-system-sa-k8s-shadowinc-xyz.name
}

resource "aws_iam_role_policy" "ebs-csi-controller-sa-kube-system-sa-k8s-shadowinc-xyz" {
  name   = "ebs-csi-controller-sa.kube-system.sa.k8s.shadowinc.xyz"
  policy = file("${path.module}/data/aws_iam_role_policy_ebs-csi-controller-sa.kube-system.sa.k8s.shadowinc.xyz_policy")
  role   = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-k8s-shadowinc-xyz.name
}

resource "aws_iam_role_policy" "masters-k8s-shadowinc-xyz" {
  name   = "masters.k8s.shadowinc.xyz"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.k8s.shadowinc.xyz_policy")
  role   = aws_iam_role.masters-k8s-shadowinc-xyz.name
}

resource "aws_iam_role_policy" "nodes-k8s-shadowinc-xyz" {
  name   = "nodes.k8s.shadowinc.xyz"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.k8s.shadowinc.xyz_policy")
  role   = aws_iam_role.nodes-k8s-shadowinc-xyz.name
}

resource "aws_internet_gateway" "k8s-shadowinc-xyz" {
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
  vpc_id = aws_vpc.k8s-shadowinc-xyz.id
}

resource "aws_key_pair" "kubernetes-k8s-shadowinc-xyz-b877467018e6823d0bccd4a66c8b3d65" {
  key_name   = "kubernetes.k8s.shadowinc.xyz-b8:77:46:70:18:e6:82:3d:0b:cc:d4:a6:6c:8b:3d:65"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.k8s.shadowinc.xyz-b877467018e6823d0bccd4a66c8b3d65_public_key")
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
}

resource "aws_launch_template" "control-plane-us-east-1a-masters-k8s-shadowinc-xyz" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-k8s-shadowinc-xyz.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-k8s-shadowinc-xyz-b877467018e6823d0bccd4a66c8b3d65.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-us-east-1a.masters.k8s.shadowinc.xyz"
  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-k8s-shadowinc-xyz.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "k8s.shadowinc.xyz"
      "Name"                                                                                                  = "control-plane-us-east-1a.masters.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1a"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "k8s.shadowinc.xyz"
      "Name"                                                                                                  = "control-plane-us-east-1a.masters.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1a"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "k8s.shadowinc.xyz"
    "Name"                                                                                                  = "control-plane-us-east-1a.masters.k8s.shadowinc.xyz"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1a"
    "kubernetes.io/cluster/k8s.shadowinc.xyz"                                                               = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-us-east-1a.masters.k8s.shadowinc.xyz_user_data")
}

resource "aws_launch_template" "nodes-us-east-1a-k8s-shadowinc-xyz" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-k8s-shadowinc-xyz.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-k8s-shadowinc-xyz-b877467018e6823d0bccd4a66c8b3d65.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1a.k8s.shadowinc.xyz"
  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-k8s-shadowinc-xyz.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
      "Name"                                                                       = "nodes-us-east-1a.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
      "Name"                                                                       = "nodes-us-east-1a.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
    "Name"                                                                       = "nodes-us-east-1a.k8s.shadowinc.xyz"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
    "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1a.k8s.shadowinc.xyz_user_data")
}

resource "aws_launch_template" "nodes-us-east-1b-k8s-shadowinc-xyz" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-k8s-shadowinc-xyz.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-k8s-shadowinc-xyz-b877467018e6823d0bccd4a66c8b3d65.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1b.k8s.shadowinc.xyz"
  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-k8s-shadowinc-xyz.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
      "Name"                                                                       = "nodes-us-east-1b.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
      "Name"                                                                       = "nodes-us-east-1b.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
    "Name"                                                                       = "nodes-us-east-1b.k8s.shadowinc.xyz"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
    "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1b.k8s.shadowinc.xyz_user_data")
}

resource "aws_launch_template" "nodes-us-east-1c-k8s-shadowinc-xyz" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-k8s-shadowinc-xyz.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-k8s-shadowinc-xyz-b877467018e6823d0bccd4a66c8b3d65.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1c.k8s.shadowinc.xyz"
  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-k8s-shadowinc-xyz.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
      "Name"                                                                       = "nodes-us-east-1c.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
      "Name"                                                                       = "nodes-us-east-1c.k8s.shadowinc.xyz"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "k8s.shadowinc.xyz"
    "Name"                                                                       = "nodes-us-east-1c.k8s.shadowinc.xyz"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
    "kubernetes.io/cluster/k8s.shadowinc.xyz"                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1c.k8s.shadowinc.xyz_user_data")
}

resource "aws_route" "route-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.k8s-shadowinc-xyz.id
  route_table_id         = aws_route_table.k8s-shadowinc-xyz.id
}

resource "aws_route" "route-__--0" {
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.k8s-shadowinc-xyz.id
  route_table_id              = aws_route_table.k8s-shadowinc-xyz.id
}

resource "aws_route_table" "k8s-shadowinc-xyz" {
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
    "kubernetes.io/kops/role"                 = "public"
  }
  vpc_id = aws_vpc.k8s-shadowinc-xyz.id
}

resource "aws_route_table_association" "us-east-1a-k8s-shadowinc-xyz" {
  route_table_id = aws_route_table.k8s-shadowinc-xyz.id
  subnet_id      = aws_subnet.us-east-1a-k8s-shadowinc-xyz.id
}

resource "aws_route_table_association" "us-east-1b-k8s-shadowinc-xyz" {
  route_table_id = aws_route_table.k8s-shadowinc-xyz.id
  subnet_id      = aws_subnet.us-east-1b-k8s-shadowinc-xyz.id
}

resource "aws_route_table_association" "us-east-1c-k8s-shadowinc-xyz" {
  route_table_id = aws_route_table.k8s-shadowinc-xyz.id
  subnet_id      = aws_subnet.us-east-1c-k8s-shadowinc-xyz.id
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key      = "k8s.shadowinc.xyz/cluster-completed.spec"
  provider = aws.files
}

resource "aws_s3_object" "discovery-json" {
  acl      = "public-read"
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_discovery.json_content")
  key      = "k8s.shadowinc.xyz/discovery/k8s.shadowinc.xyz/.well-known/openid-configuration"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key      = "k8s.shadowinc.xyz/backups/etcd/events/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key      = "k8s.shadowinc.xyz/backups/etcd/main/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-aws-cloud-controller-addons-k8s-io-k8s-1-18" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-aws-cloud-controller.addons.k8s.io-k8s-1.18_content")
  key      = "k8s.shadowinc.xyz/addons/aws-cloud-controller.addons.k8s.io/k8s-1.18.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-aws-ebs-csi-driver-addons-k8s-io-k8s-1-17" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-aws-ebs-csi-driver.addons.k8s.io-k8s-1.17_content")
  key      = "k8s.shadowinc.xyz/addons/aws-ebs-csi-driver.addons.k8s.io/k8s-1.17.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-aws-load-balancer-controller-addons-k8s-io-k8s-1-19" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-aws-load-balancer-controller.addons.k8s.io-k8s-1.19_content")
  key      = "k8s.shadowinc.xyz/addons/aws-load-balancer-controller.addons.k8s.io/k8s-1.19.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-bootstrap" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-bootstrap_content")
  key      = "k8s.shadowinc.xyz/addons/bootstrap-channel.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-certmanager-io-k8s-1-16" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-certmanager.io-k8s-1.16_content")
  key      = "k8s.shadowinc.xyz/addons/certmanager.io/k8s-1.16.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key      = "k8s.shadowinc.xyz/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key      = "k8s.shadowinc.xyz/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key      = "k8s.shadowinc.xyz/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key      = "k8s.shadowinc.xyz/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-limit-range-addons-k8s-io" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-limit-range.addons.k8s.io_content")
  key      = "k8s.shadowinc.xyz/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-metrics-server-addons-k8s-io-k8s-1-11" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-metrics-server.addons.k8s.io-k8s-1.11_content")
  key      = "k8s.shadowinc.xyz/addons/metrics-server.addons.k8s.io/k8s-1.11.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-networking-cilium-io-k8s-1-16" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-networking.cilium.io-k8s-1.16_content")
  key      = "k8s.shadowinc.xyz/addons/networking.cilium.io/k8s-1.16-v1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "k8s-shadowinc-xyz-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_k8s.shadowinc.xyz-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key      = "k8s.shadowinc.xyz/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "keys-json" {
  acl      = "public-read"
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_keys.json_content")
  key      = "k8s.shadowinc.xyz/discovery/k8s.shadowinc.xyz/openid/v1/jwks"
  provider = aws.files
}

resource "aws_s3_object" "kops-version-txt" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key      = "k8s.shadowinc.xyz/kops-version.txt"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-east-1a" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-east-1a_content")
  key      = "k8s.shadowinc.xyz/manifests/etcd/events-control-plane-us-east-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-east-1a" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-east-1a_content")
  key      = "k8s.shadowinc.xyz/manifests/etcd/main-control-plane-us-east-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key      = "k8s.shadowinc.xyz/manifests/static/kube-apiserver-healthcheck.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-east-1a" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-east-1a_content")
  key      = "k8s.shadowinc.xyz/igconfig/control-plane/control-plane-us-east-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1a" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1a_content")
  key      = "k8s.shadowinc.xyz/igconfig/node/nodes-us-east-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1b" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1b_content")
  key      = "k8s.shadowinc.xyz/igconfig/node/nodes-us-east-1b/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1c" {
  bucket   = "kops-476621737173"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1c_content")
  key      = "k8s.shadowinc.xyz/igconfig/node/nodes-us-east-1c/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_security_group" "masters-k8s-shadowinc-xyz" {
  description = "Security group for masters"
  name        = "masters.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "masters.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
  vpc_id = aws_vpc.k8s-shadowinc-xyz.id
}

resource "aws_security_group" "nodes-k8s-shadowinc-xyz" {
  description = "Security group for nodes"
  name        = "nodes.k8s.shadowinc.xyz"
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "nodes.k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
  vpc_id = aws_vpc.k8s-shadowinc-xyz.id
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-masters-k8s-shadowinc-xyz" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.masters-k8s-shadowinc-xyz.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-52-203-245-53--32-ingress-tcp-22to22-masters-k8s-shadowinc-xyz" {
  cidr_blocks       = ["52.203.245.53/32"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.masters-k8s-shadowinc-xyz.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-52-203-245-53--32-ingress-tcp-22to22-nodes-k8s-shadowinc-xyz" {
  cidr_blocks       = ["52.203.245.53/32"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-masters-k8s-shadowinc-xyz-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-k8s-shadowinc-xyz.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-k8s-shadowinc-xyz-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-k8s-shadowinc-xyz.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-k8s-shadowinc-xyz-ingress-all-0to0-masters-k8s-shadowinc-xyz" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-k8s-shadowinc-xyz.id
  source_security_group_id = aws_security_group.masters-k8s-shadowinc-xyz.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-k8s-shadowinc-xyz-ingress-all-0to0-nodes-k8s-shadowinc-xyz" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-k8s-shadowinc-xyz.id
  source_security_group_id = aws_security_group.masters-k8s-shadowinc-xyz.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-shadowinc-xyz-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-k8s-shadowinc-xyz-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-k8s-shadowinc-xyz-ingress-all-0to0-nodes-k8s-shadowinc-xyz" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-k8s-shadowinc-xyz.id
  source_security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-shadowinc-xyz-ingress-tcp-1to2379-masters-k8s-shadowinc-xyz" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-shadowinc-xyz.id
  source_security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-shadowinc-xyz-ingress-tcp-2382to4000-masters-k8s-shadowinc-xyz" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-shadowinc-xyz.id
  source_security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-shadowinc-xyz-ingress-tcp-4003to65535-masters-k8s-shadowinc-xyz" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-k8s-shadowinc-xyz.id
  source_security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-k8s-shadowinc-xyz-ingress-udp-1to65535-masters-k8s-shadowinc-xyz" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-k8s-shadowinc-xyz.id
  source_security_group_id = aws_security_group.nodes-k8s-shadowinc-xyz.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_subnet" "us-east-1a-k8s-shadowinc-xyz" {
  availability_zone                           = "us-east-1a"
  cidr_block                                  = "172.20.32.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                                   = "k8s.shadowinc.xyz"
    "Name"                                                = "us-east-1a.k8s.shadowinc.xyz"
    "SubnetType"                                          = "Public"
    "kops.k8s.io/instance-group/control-plane-us-east-1a" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1a"         = "true"
    "kubernetes.io/cluster/k8s.shadowinc.xyz"             = "owned"
    "kubernetes.io/role/elb"                              = "1"
    "kubernetes.io/role/internal-elb"                     = "1"
  }
  vpc_id = aws_vpc.k8s-shadowinc-xyz.id
}

resource "aws_subnet" "us-east-1b-k8s-shadowinc-xyz" {
  availability_zone                           = "us-east-1b"
  cidr_block                                  = "172.20.64.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                           = "k8s.shadowinc.xyz"
    "Name"                                        = "us-east-1b.k8s.shadowinc.xyz"
    "SubnetType"                                  = "Public"
    "kops.k8s.io/instance-group/nodes-us-east-1b" = "true"
    "kubernetes.io/cluster/k8s.shadowinc.xyz"     = "owned"
    "kubernetes.io/role/elb"                      = "1"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = aws_vpc.k8s-shadowinc-xyz.id
}

resource "aws_subnet" "us-east-1c-k8s-shadowinc-xyz" {
  availability_zone                           = "us-east-1c"
  cidr_block                                  = "172.20.96.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                           = "k8s.shadowinc.xyz"
    "Name"                                        = "us-east-1c.k8s.shadowinc.xyz"
    "SubnetType"                                  = "Public"
    "kops.k8s.io/instance-group/nodes-us-east-1c" = "true"
    "kubernetes.io/cluster/k8s.shadowinc.xyz"     = "owned"
    "kubernetes.io/role/elb"                      = "1"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = aws_vpc.k8s-shadowinc-xyz.id
}

resource "aws_vpc" "k8s-shadowinc-xyz" {
  assign_generated_ipv6_cidr_block = true
  cidr_block                       = "172.20.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "k8s-shadowinc-xyz" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]
  tags = {
    "KubernetesCluster"                       = "k8s.shadowinc.xyz"
    "Name"                                    = "k8s.shadowinc.xyz"
    "kubernetes.io/cluster/k8s.shadowinc.xyz" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "k8s-shadowinc-xyz" {
  dhcp_options_id = aws_vpc_dhcp_options.k8s-shadowinc-xyz.id
  vpc_id          = aws_vpc.k8s-shadowinc-xyz.id
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 4.0.0"
    }
  }
}
