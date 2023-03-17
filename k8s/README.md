# Kubernetes Manifests for Sock Shop
This repository contains a collection of Kubernetes manifests required to deploy and maintain a sample application and its supporting infrastructure. The application is a microservices-based e-commerce platform called "Sock Shop". The repository is divided into the following directories:

- `ingress-nginx`: Contains manifests for setting up Nginx Ingress Controller, default backend, and AWS ELB.
- `manifests-application`: Contains manifests for deploying the Sock Shop application and its individual microservices.
- `manifests-logging`: Contains manifests for setting up logging infrastructure using Elasticsearch, Fluentd, and Kibana.
- `manifests-monitoring`: Contains manifests for setting up monitoring infrastructure using Prometheus and Grafana.

## Directory Structure
### ingress-nginx

This directory contains the necessary manifests for setting up the Nginx Ingress Controller, default backend, and AWS ELB.

- `01-ns-and-sa.yaml`: Creates the namespace and service account for Ingress Nginx.
- `02-rbac.yaml`: Defines the necessary RBAC roles and role bindings.
- `03-default-server-secret.yaml`: Generates the default server TLS secret.
- `04-nginx-config.yaml`: Configures Nginx through a ConfigMap.
- `05-ingress-class.yaml`: Defines the ingress class for Nginx.
- `06-nginx-ingress.yaml`: Deploys the Nginx Ingress Controller.
- `07-loadbalancer-aws-elb.yaml`: Configures the AWS ELB.
- `08-default-backend-dep.yaml`: Deploys the default backend for handling non-matched requests.
- `09-default-backend-svc.yaml`: Exposes the default backend via a Kubernetes service.
- `10-default-backend-ingress.yaml`: Configures ingress for the default backend.

### manifests-application
This directory contains the necessary manifests for deploying the Sock Shop application and its individual microservices.

- `00-sock-shop-ns.yaml`: Creates the namespace for the Sock Shop application.
- `01-carts-dep.yaml` to `28-user-db-svc.yaml`: Deploys the individual microservices, their corresponding databases, and services for the Sock Shop application.

### manifests-logging
This directory contains the necessary manifests for setting up the logging infrastructure using Elasticsearch, Fluentd, and Kibana.

- `elasticsearch.yml`: Deploys Elasticsearch.
- `fluentd-cr.yml`, `fluentd-crb.yml`, `fluentd-sa.yaml`: Sets up Fluentd's RBAC, service account, and daemon set.
- `kibana-ingress.yaml`: Configures ingress for Kibana.
- `kibana.yml`: Deploys Kibana.

### manifests-monitoring
This directory contains the necessary manifests for setting up the monitoring infrastructure using Prometheus and Grafana.

- `00-monitoring-ns.yaml`: Creates the namespace for monitoring components.
- `01-prometheus-sa.yaml` to `26-prometheus-node-exporter-svc.yaml`: Deploys and configures Prometheus, its alert rules, and related components.
- `20-grafana-configmap.yaml` to `23-grafana-ingress.yaml`: Deploys and configures Grafana, its dashboards, and related components.

## Deployment
To deploy the complete setup, apply the manifests in each directory sequentially:

```bash
kubectl apply -f ingress-nginx
kubectl apply -f manifests-application
kubectl apply -f manifests-logging
kubectl apply -f manifests-monitoring
```
Please note that deploying some components might require extra setup, such as configuring AWS credentials for the ELB setup. Make sure to read the individual READMEs for more information.

## Ingress
The Sock Shop application, grafana, and kibana are exposed via ingress. To reach the application, get the `EXTERNAL-IP` of the ELB created by the ingress-nginx setup:

```bash
kubectl get svc -n nginx-ingress nginx-ingress -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'
```

A Wild Card DNS entry has to be created to point to the `EXTERNAL-IP` of the ELB. The Wild Card DNS entry should be of the form `*.<subdomain>.<domain>`. The application can then be accessed via `http://<subdomain>.<domain>`.

Make changes to the ingress rules in `10-default-backend-ingress.yaml`, `23-grafana-ingress.yaml`, `11-front-end-ingress.yaml` and `kibana-ingress.yaml` to change the subdomain and domain.

Make sure to update the `07-loadbalancer-aws-elb.yaml` file to use the correct Certificate ARN and security group.

### Ingress Endpoints
The following endpoints are exposed via ingress:
- `http://front.<subdomain>.<domain>`: Sock Shop application
- `http://grafana.<subdomain>.<domain>`: Grafana dashboard
- `http://kibana.<subdomain>.<domain>`: Kibana dashboard
- `http://default.<subdomain>.<domain>`: Default backend

## Cleanup
To clean up the setup, delete the manifests in each directory sequentially:

```bash
kubectl delete -f manifests-monitoring
kubectl delete -f manifests-logging
kubectl delete -f manifests-application
kubectl delete -f ingress-nginx
```

