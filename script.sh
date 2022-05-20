git clone ${PLUGIN_REPOURL}
basename=$(basename ${PLUGIN_REPOURL})
echo $basename
filename={basename%.*}
echo $filename
cd $filename
terraform init
terraform apply -var="aws_region=${PLUGIN_AWSREGION}" -var="var1=${PLUGIN_VAR1}" -var="var2=${PLUGIN_VAR2}" -var="var3=${PLUGIN_VAR3}" -auto-approve
