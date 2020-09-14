eksctl create cluster \
 --name $(<../variables/cluster_name.txt) \
 --version 1.17 \
 --without-nodegroup
