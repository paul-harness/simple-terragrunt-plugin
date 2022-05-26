git clone ${PLUGIN_REPOURL}
basename=$(basename ${PLUGIN_REPOURL})
echo $basename
filename=${basename%.*}
echo $filename
cd $filename
terragrunt apply
