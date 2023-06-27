zip -r grafana-dash.zip dashboards
zip -r grafana-prov.zip provisioning
kubectl delete configmap test-dash
kubectl delete configmap test-prov
kubectl create configmap test-dash --from-file=./grafana-dash.zip
kubectl create configmap test-prov --from-file=./grafana-prov.zip
kubectl get configmap test-dash -o yaml > dash.yml
kubectl get configmap test-prov -o yaml > prov.yml