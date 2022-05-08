# GCP-Final-Task
Deploy a python web application on GKE. Infrastructure built using terrafrm.

## Build image and upload to GCR
```
docker build -t <img-name> .
docker tag <img-name> gcr.io/<project-id>/<img-name>
docker push gcr.io/<project-id>/<img-name>
```
## Build infrastructure on GCP
```
cd infrastructure/
terraform init
terraform apply
```
### Connect to private GKE cluster through private vm
```
gcloud compute ssh management-instance --tunnel-through-iap
gcloud container clusters get-credentials private-cluster --zone us-central1-a
```
## Deploy app to GKE cluster and expose deploymnet through load balancer
```
kubectl apply -f deployment
```
