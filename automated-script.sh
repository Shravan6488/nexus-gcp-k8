cd /tmp
git clone https://github.com/Shravan6488/nexus-gcp-k8s.git
cd /tmp/nexus-gcp-k8s/
docker build -t gcr.io/my-nexus-project-232423/nexus:v1 .
gcloud container clusters create nexus-cluster --num-nodes=3 --zone=us-central1-a
kubectl create -f gcloud-nexus.yaml
