git clone https://github.com/kubernetes/kube-state-metrics.git
# shellcheck disable=SC2164
cd ./kube-state-metrics
git checkout tags/v2.9.2
kubectl apply -f examples/standard
