# Azure AKS Microservices Platform

## Project Overview

This project demonstrates an end-to-end DevOps implementation on Microsoft Azure using modern cloud-native technologies. The platform automates infrastructure provisioning, containerization, continuous integration, continuous deployment, monitoring, and GitOps practices.

The objective of this project is to showcase real-world DevOps skills by deploying microservices on Azure Kubernetes Service (AKS) with automated CI/CD pipelines, monitoring, and infrastructure as code.

---

## Architecture

Developer → GitHub → GitHub Actions → Azure Container Registry (ACR) → Azure Kubernetes Service (AKS) → Prometheus → Grafana

---

## Technologies Used

### Cloud

* Microsoft Azure
* Azure Kubernetes Service (AKS)
* Azure Container Registry (ACR)

### Infrastructure as Code

* Terraform

### Containerization

* Docker

### CI/CD

* GitHub Actions

### Container Orchestration

* Kubernetes

### Monitoring & Observability

* Prometheus
* Grafana

### GitOps

* ArgoCD

### Application

* Java Spring Boot

---

## Features Implemented

### Infrastructure Automation

* Provisioned Azure infrastructure using Terraform
* Created AKS Cluster
* Created Azure Container Registry
* Managed infrastructure through code

### Containerization

* Dockerized Spring Boot microservice
* Built versioned container images
* Stored images in Azure Container Registry

### Kubernetes Deployment

* Deployments
* Services
* ConfigMaps
* Secrets
* Resource Limits & Requests
* Liveness Probes
* Readiness Probes

### CI/CD Pipeline

Implemented automated deployment pipeline using GitHub Actions:

1. Source code checkout
2. Java build using Maven
3. Docker image build
4. Push image to Azure Container Registry
5. Deploy application to AKS
6. Verify rollout status

### Monitoring

* Installed Prometheus using Helm
* Installed Grafana using kube-prometheus-stack
* Monitored AKS cluster health
* Monitored Kubernetes resources
* Visualized metrics through Grafana dashboards

### GitOps

* Installed ArgoCD on AKS
* Configured Git repository integration
* Implemented declarative deployment approach

---

## Kubernetes Components

### Deployment

* Product Service
* Order Service

### Services

* ClusterIP Services
* LoadBalancer Service

### Configuration Management

* ConfigMaps
* Secrets

---

## Monitoring Dashboards

Implemented monitoring for:

* Pod Health
* CPU Utilization
* Memory Utilization
* Cluster Health
* Node Metrics
* Namespace Metrics
* Workload Metrics

---

## Challenges Solved

During implementation, several real-world production issues were identified and resolved:

* ImagePullBackOff troubleshooting
* ErrImagePull debugging
* Azure Container Registry authentication issues
* Kubernetes rollout failures
* ReplicaSet conflicts
* ArgoCD installation conflicts
* Grafana dashboard troubleshooting
* Prometheus metrics validation

---

## Key Learnings

* Infrastructure as Code using Terraform
* Kubernetes administration on AKS
* CI/CD pipeline implementation
* Container image management
* Monitoring and observability
* GitOps deployment methodology
* Production troubleshooting and debugging

---

## Future Enhancements

* NGINX Ingress Controller
* Custom Domain Integration
* SSL/TLS using Let's Encrypt
* Application Metrics via Spring Boot Actuator
* Advanced Alerting with Alertmanager
* Multi-Environment Deployment (Dev/UAT/Prod)

---

## Author

Ganesh Handge

DevOps Engineer

Skills:
Azure | AKS | Terraform | Docker | Kubernetes | GitHub Actions | Prometheus | Grafana | ArgoCD | Linux | AWS



# Architecture Diagram

```text
                    +------------------+
                    |   Developer      |
                    +------------------+
                              |
                              v
                    +------------------+
                    |     GitHub       |
                    | Source Code Repo |
                    +------------------+
                              |
                              v
                    +------------------+
                    | GitHub Actions   |
                    | CI/CD Pipeline   |
                    +------------------+
                              |
              +---------------+---------------+
              |                               |
              v                               v
    +------------------+         +------------------+
    | Maven Build      |         | Docker Build     |
    | Unit Testing     |         | Image Creation   |
    +------------------+         +------------------+
                                              |
                                              v
                               +---------------------------+
                               | Azure Container Registry |
                               |          (ACR)           |
                               +---------------------------+
                                              |
                                              v
                               +---------------------------+
                               | Azure Kubernetes Service |
                               |           (AKS)          |
                               +---------------------------+
                                              |
                    +-------------------------+-------------------------+
                    |                                                   |
                    v                                                   v
        +-------------------+                           +-------------------+
        | Product Service   |                           | Order Service     |
        | Spring Boot App   |                           | Spring Boot App   |
        +-------------------+                           +-------------------+
                    |                                                   |
                    +-------------------------+-------------------------+
                                              |
                                              v
                               +---------------------------+
                               | Kubernetes Services      |
                               | LoadBalancer / ClusterIP |
                               +---------------------------+
                                              |
                                              v
                                       End Users

--------------------------------------------------------------------------

Monitoring & Observability

            +---------------------------------------+
            |             Prometheus                |
            | Scrapes Kubernetes & App Metrics      |
            +---------------------------------------+
                              |
                              v
            +---------------------------------------+
            |               Grafana                 |
            | Dashboards, Visualization & Analysis |
            +---------------------------------------+

--------------------------------------------------------------------------

GitOps Deployment Flow

             +--------------------+
             |      GitHub        |
             | Kubernetes Manifests|
             +--------------------+
                        |
                        v
             +--------------------+
             |       ArgoCD       |
             | Continuous Sync    |
             +--------------------+
                        |
                        v
             +--------------------+
             |        AKS         |
             +--------------------+
```

## End-to-End Workflow

1. Developer pushes code to GitHub.
2. GitHub Actions automatically triggers the CI/CD pipeline.
3. Maven builds the Spring Boot application.
4. Docker image is created and tagged.
5. Docker image is pushed to Azure Container Registry (ACR).
6. Kubernetes deployment is updated in AKS.
7. AKS performs rolling deployment with health checks.
8. Prometheus collects cluster and application metrics.
9. Grafana visualizes metrics through dashboards.
10. ArgoCD continuously synchronizes Kubernetes manifests from GitHub to AKS.

