cd ..\Terraform

Write-Host "Creating Infrastructure..."

terraform apply -auto-approve

Write-Host "Getting AKS Credentials..."

az aks get-credentials `
  --resource-group rg-microservices-dev `
  --name aks-microservices-dev `
  --overwrite-existing

Write-Host "Deploying Product Service..."

kubectl apply -f ..\product-service\k8s\

Write-Host "Deploying Order Service..."

kubectl apply -f ..\order\k8s\

Write-Host "Completed!"