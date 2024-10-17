git clone https://github.com/prometheus-operator/kube-prometheus.git
# shellcheck disable=SC2164
cd ./kube-prometheus
git checkout tags/v0.13.0
kubectl apply --server-side -f manifests/setup
kubectl wait --for condition=Established --all CustomResourceDefinition --namespace=monitoring
kubectl apply -f manifests/
