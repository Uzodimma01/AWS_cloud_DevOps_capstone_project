# Switch kubectl config the cluster's ARN
kubectl config use-context $(</tmp/jenkins_build_files/cluster_arn.txt)
