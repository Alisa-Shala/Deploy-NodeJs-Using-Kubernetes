# Deploy Node.js Application Using Kubernetes

This project demonstrates how to deploy a Node.js application using Kubernetes.

## Prerequisites

Before you begin, make sure you have the following installed:

- **Kubernetes**: A running Kubernetes cluster, either local (like Minikube) or remote.
- **Docker**: For building and running Docker containers.
- **Node.js**: A JavaScript runtime to run the Node.js application.
- **Git**: For version control and managing your project.

## Installation

Follow the steps below to set up the project locally and deploy it to Kubernetes:

1. **Clone the repository:**

   First, clone the repository to your local machine:
   
   ```bash
   git clone https://github.com/Alisa-Shala/Deploy-NodeJs-Using-Kubernetes.git
   cd Deploy-NodeJs-Using-Kubernetes
Build the Docker image:

In the project folder, build the Docker image for the Node.js application:

bash
Copy
Edit
docker build -t nodejs-app .
Deploy the application to Kubernetes:

After building the Docker image, deploy the application to your Kubernetes cluster:

Apply the deployment.yaml file:

bash
Copy
Edit
kubectl apply -f deployment.yaml
Apply the service.yaml file:

bash
Copy
Edit
kubectl apply -f service.yaml
Apply the ingress.yaml file (if needed for routing traffic to your app):

bash
Copy
Edit
kubectl apply -f ingress.yaml
Usage
Once the application is deployed, you can access it via the Kubernetes service.

Exposing the Node.js App
LoadBalancer: If you're using a LoadBalancer service type, you'll get an external IP to access the application.
NodePort: If you're using a NodePort service type, access the app via <NodeIP>:<Port>.
For more information on how to access the app, refer to the Kubernetes documentation.
