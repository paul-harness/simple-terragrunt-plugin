echo "TF Repo:" ${PLUGIN_REPO}
echo "AWS Region:" ${PLUGIN_AWSREGION}
terraform --version
git clone https://github.com/paul-harness/tf-hello-world.git
ls -l
cd ${PLUGIN_REPO}
ls -l
terraform init
terraform apply -var="aws_region=${PLUGIN_AWSREGION}" -auto-approve
