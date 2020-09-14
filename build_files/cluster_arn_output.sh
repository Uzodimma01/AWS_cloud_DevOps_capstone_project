aws cloudformation describe-stacks --region $(<../variables/region.txt) \
 --stack-name eksctl-$(<../variables/cluster_name.txt)-cluster \
 --query "Stacks[0].Outputs[?OutputKey=='ARN'].OutputValue" \
 --output text>/tmp/jenkins_build_files/cluster_arn.txt
