# Update kubeconfig file with the deployed cluster
aws eks --region $(<./variables/region.txt) update-kubeconfig --name $(<./variables/cluster_name.txt)
