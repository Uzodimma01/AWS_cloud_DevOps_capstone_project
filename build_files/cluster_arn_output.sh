aws cloudformation describe-stacks --region $(<./variables/region.txt) \
 --stack-name eksctl-$(<./variables/cluster_name.txt)-cluster \
 --query "Stacks[0].Outputs[?OutputKey=='ARN'].OutputValue" \
 --output text>/tmp/cluster_arn.txt
