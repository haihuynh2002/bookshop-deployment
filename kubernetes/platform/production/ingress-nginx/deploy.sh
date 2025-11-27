

set -euo pipefail

echo "\n📦 Installing ingress-nginx..."

#kubectl apply -k resources

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install nginx-ingress ingress-nginx/ingress-nginx --set controller.publishService.enabled=true

echo "\n📦 Installation completed.\n"