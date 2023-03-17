# Sock Shop on Kubernetes
This repository contains Terraform and Kubernetes manifests required to deploy and maintain a sample application and its supporting infrastructure. The application is a microservices-based e-commerce platform called "Sock Shop". The repository is divided into two main directories:

- `k8s`: Contains Kubernetes manifests for setting up the application, ingress controller, logging, and monitoring components.
- `terraform`: Contains Terraform manifests for provisioning the underlying infrastructure.

## Directory Structure

### k8s
This directory contains the Kubernetes manifests for setting up the application, ingress controller, logging, and monitoring components. It consists of the following subdirectories:

- `ingress-nginx`: Contains manifests for setting up Nginx Ingress Controller.
- `manifests-application`: Contains manifests for deploying the Sock Shop application and its individual microservices.
- `manifests-logging`: Contains manifests for setting up logging infrastructure using Elasticsearch, Fluentd, and Kibana.
- `manifests-monitoring`: Contains manifests for setting up monitoring infrastructure using Prometheus and Grafana.

Refer to the respective README files in the subdirectories for more information.

### terraform
This directory contains Terraform manifests for provisioning the underlying infrastructure. It consists of the following subdirectory:

- `data`: Contains Terraform data sources and variables for infrastructure provisioning.

## Deployment

### Terraform
To deploy the infrastructure using Terraform, first install Terraform on your machine.

Next, navigate to the terraform directory and initialize the Terraform working directory:
```bash
cd terraform
terraform init
```

Now, create a `terraform.tfvars` file containing the required variables. Refer to the `data` subdirectory for variable definitions.

Once the variables are set, review the proposed changes with `terraform plan` and apply them with `terraform apply`:
```bash
terraform plan
terraform apply
```

This process will provision the necessary infrastructure components, such as VPC, subnets, and Kubernetes cluster.

### Kubernetes
After the infrastructure is provisioned, configure `kubectl` to interact with the newly created Kubernetes cluster.

Next, apply the Kubernetes manifests in each directory under `k8s` sequentially:
```
kubectl apply -f k8s/ingress-nginx
kubectl apply -f k8s/manifests-application
kubectl apply -f k8s/manifests-logging
kubectl apply -f k8s/manifests-monitoring
```

Please note that deploying some components might require extra setup, such as configuring AWS credentials for the ELB setup. Make sure to read the individual READMEs in the `k8s` subdirectories for more information.

## Endpoints
Once the deployment is complete, you can access the following endpoints:
- Sock Shop: http://front.k8s.shadowinc.xyz
- Kibana: http://kibana.k8s.shadowinc.xyz
- Grafana: http://grafana.k8s.shadowinc.xyz
- Default Backend: http://default.k8s.shadowinc.xyz

## Cleanup
To destroy the resources created by Terraform, navigate to the `terraform` directory and run `terraform destroy`:
```bash
cd terraform
terraform destroy
```
This process will tear down the infrastructure components that were provisioned earlier.