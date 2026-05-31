cd ..\Terraform

Write-Host "Destroying Azure Infrastructure..."

terraform destroy -auto-approve

Write-Host "Infrastructure Deleted Successfully!"