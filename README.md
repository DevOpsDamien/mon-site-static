# mon-site-static

# Raspberry Pi Home Lab with k3s and GitHub Actions

This repository hosts the configuration and source code for my website, deployed on a **k3s (rancher)** (lightweight Kubernetes) cluster running on a **Raspberry Pi 4 (modele B)**.  
The goal is to have a **CI/CD pipeline**: every code change triggers a GitHub Actions workflow that builds a new Docker image, pushes it to Docker Hub, and then updates the deployment on k3s.

## Overview

- **Raspberry Pi**  
  - Runs k3s (single-node setup).  
  - Connected to the internet via a Freebox with Full Stack IPv4 and IPv6 enabled.

- **k3s (Kubernetes)**  
  - Manages pods, deployments, and services.  
  - Uses Nginx Ingress Controller for HTTP/HTTPS routing.

- **Docker Hub**  
  - Stores the built Docker images.  
  - Images are built for `linux/arm64` architecture (required by Raspberry Pi).

- **GitHub Actions**  
  - Builds the Docker image using QEMU and Buildx.  
  - Pushes the image to Docker Hub.  
  - Updates the Kubernetes deployment on the Raspberry Pi.

- **Internet box Configuration**  
  - NAT/port forwarding: external ports 80 and 443 are mapped to the NodePorts or LoadBalancer ports exposed by Nginx Ingress.  
  - Full Stack IPv4 to allow standard ports usage.  
  - IPv6 firewall disabled or properly opened for direct IPv6 access.

- **DNS Configuration (Cloudflare, Namecheap, etc.)**
  - Domain obtention (Godaddy, Namecheap ...)
  - DNS Configuration (A/AAAA records)

(And a bit of ChatGPT for troubleshooting!)

I recommend that anyone looking to reinforce their DevOps skills follow this home-lab project. It provides an in-depth understanding of cloud-native technologies while showing how to run a fully automated, self-hosted Kubernetes cluster on minimal hardware. It’s also a cost-effective, hands-on way to host your own website! 🚀
