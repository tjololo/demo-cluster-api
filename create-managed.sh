export $(grep -v '^#' .env | xargs)

clusterctl generate cluster capi-gke-quickstart --flavor gke -i gcp > capi-gke-quickstart.yaml

kubectl apply -f capi-gke-quickstart.yaml