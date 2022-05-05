git clone "https://github.com/paul-harness/${PLUGIN_REPO}.git"
cd ${PLUGIN_REPO}
terraform init
terraform apply -var="aws_region=${PLUGIN_AWSREGION}" -auto-approve
