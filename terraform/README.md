# Kubernetes Cluster Setup with Kops

This README will guide you through the process of setting up a Kubernetes (k8s) cluster using Kops on AWS. Kops is an open-source tool that automates the deployment and management of Kubernetes clusters.

## Prerequisites
- [AWS CLI installed and configured](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Kops installed](https://kops.sigs.k8s.io/getting_started/install/)
- [Kubectl installed](https://kubernetes.io/docs/tasks/tools/)

## Setup
Follow the steps below to set up your Kubernetes cluster with Kops:

1. Create an IAM group and attach necessary policies
```bash
aws iam create-group --group-name kops

aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonRoute53FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonVPCFullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonSQSFullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess --group-name kops
```

2. Create an IAM user, add the user to the group, and create access keys
```bash
aws iam create-user --user-name kops
aws iam add-user-to-group --user-name kops --group-name kops
aws iam create-access-key --user-name kops
```

3. Setup a CLI profile for the IAM user
```bash
aws configure --profile kops
```
Use the access key and secret key from the previous step.

4. Configure AWS CLI with the newly created user credentials
```bash
export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id --profile kops)
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key --profile kops)
```

5. Create an S3 bucket for Kops state storage
```bash
aws s3api create-bucket \
    --bucket <bucket-name> \
    --region us-east-1 \
    --acl public-read

aws s3api put-bucket-encryption \
    --bucket <bucket-name> \
    --server-side-encryption-configuration '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'

aws s3api put-bucket-versioning --bucket <bucket-name> --versioning-configuration Status=Enabled
```
Replace `<bucket-name>` with the name of the bucket you want to create.

6. Create a DynamoDB table for Terraform state lock management
```bash
aws dynamodb create-table \
    --table-name <table-name> \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1
```
Replace `<table-name>` with the name of the table you want to create.
Once the s3 bucket and DynamoDB table are created, update the `main.tf` file with the bucket name and table name.

7. Set up environment variables for the cluster
```bash
export NAME=<subdomain>.<domain>
export KOPS_STATE_STORE=s3://kops-476621737173
export ZONES="us-east-1a,us-east-1b,us-east-1c"
```
Replace `<subdomain>` and `<domain>` with the subdomain and domain you want to use for the cluster.
To configure the domain and subdomain to work with Kops, follow this guide: https://kops.sigs.k8s.io/getting_started/aws/#configure-dns

8. Generate an SSH key pair for the cluster
```bash
ssh-keygen -t rsa -C "cluster@<domain>"
```
Replace `<domain>` with the domain you want to use for the cluster.
This command will save your identification in ~/.ssh/kops and your public key in ~/.ssh/kops.pub.

9. Add your public IP address
```bash
export IP=$(curl -s ifconfig.me)
```
Your public IP address can be found, for example, by visiting https://www.whatismyip.com/.

10. Create the cluster configuration files in Terraform format
```bash
kops create cluster ${NAME} \
  --state=${KOPS_STATE_STORE} \
  --master-count 1 \
  --master-size t3.medium \
  --node-count 2 \
  --node-size t3.small \
  --zones ${ZONES} \
  --admin-access ${IP}/32 \
  --ssh-public-key ~/.ssh/kops.pub \
  --ssh-access ${IP}/32 \
  --discovery-store=${KOPS_STATE_STORE}/${NAME}/discovery \
  --out=. \
  --target=terraform
```

11. Initialize Terraform
```bash
terraform init
```

12. Create the cluster
```bash
terraform apply
```
Wait a few minutes for the cluster to be built.
Once the cluster is built, you can verify it's running by running the next step.

13. Validate and update the cluster
After running the `terraform apply` command, you can validate the cluster by running:
```bash
kops validate cluster --state ${KOPS_STATE_STORE} --name ${NAME}
```

If you need to make changes to the cluster configuration, use the kops edit command:
```bash
kops edit cluster --state ${KOPS_STATE_STORE} --name ${NAME}
```

After making changes, get the Terraform configuration files again:
```bash
kops update cluster --state ${KOPS_STATE_STORE} --name ${NAME} --out=. --target=terraform
```

Then, apply the changes:
```bash
terraform apply
```

14. Verify the cluster is running
Once the cluster is deployed, you can verify it's running by checking the nodes:
```bash
kubectl get nodes
```
You should see your master and worker nodes in the output.

## Cleanup
To delete the cluster, run the following command:
```bash
terraform destroy
```

You can also delete the cluster using the kops command:
```bash
kops delete cluster --state ${KOPS_STATE_STORE} --name ${NAME} --yes
```

## Addons
Kops has a number of addons that can be installed on the cluster.
To install an addon, run the following command, go to the [Kops Addons](https://kops.sigs.k8s.io/addons) page, and find the addon you want to install.
Most addons are installed by updating the cluster configuration file and running the `kops edit cluster` command, the `kops update cluster` command, and the `terraform apply` command.

## References
- https://kops.sigs.k8s.io/getting_started/install/
- [Kops Addons](https://kops.sigs.k8s.io/addons)