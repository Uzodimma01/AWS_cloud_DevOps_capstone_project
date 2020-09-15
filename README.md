# About this project
As part of criteria for graduating from the AWS Cloud DevOps NanoDegree at Udacity, I have designed a Continous Deployment pipeline as my Capstone project, 
  which for the most part, puts together my understanding about Cloudformation, Jenkins pipeline and application containerization using Docker.
  This project automates the deployment of codes checked into a git repository without the need for human intervention when the build starts, without the use of third party       tool.

## Pre-configuration
Ensure Jenkins is configured with the right credentials for the following
1) AWS. Ensure that the AWS credential has access to Cloudformation, VPC and EC2
2) DockerHub
3) GitHub/Git/BitBucket

Before starting the build process, update the respective .txt files in the 'variable' directory with the corresponding parameter as required 
  because they are the parameters that will be passed into the commands as they run.
  Be sure to follow the AWS, Docker and EKS parameter guideline when specifying your parameters.

## Pipeline process
The pipeline
1) Lints the Dockerfile and HTML file
2) Builds docker image from the Dockerfile
3) Tags and upload the Docker image to DockerHub
4) Creates an EKS cluster
5) Creates an EKS node group and attaches it to the cluster created earlier
6) Deploys the image to the created cluster and attaches a public ip to the app
7) Cleans up temporary files created during the build process.

## Working operation
1) The Admin specifies the parameters in the corresponding .txt files in the 'variable' directory
2) The scripts in the 'build_files' directory pass the parameters from .txt files onto the respective commands when being called
3) The Jenkinsfile calls the scripts in the 'build_files' directory to execute the necessary commands.

## Navigation
The Jenkinsfile, Dockerfile, README file and HTML files are in the root directory
The build scripts and deployment.yml files are in the 'build_files' directory
The variable files (.txt files which comtains the parameters to be passed onto the commands during the build) are in the 'variable' directory.

## Important information
This code can be modified to suit your need but be sure to understand the project well enough.
Do not condense more than one bash scripts/commands with potential points of failure into one bash script,
  doing so, the build will not fail when the command that is not at the end of the bash script fails (to execute) which may give false success in the build process.
Do not take out the commands from the bash script, doing so will cause problems during pipeline build because Jenkins uses Groovy language 
  which does not support the type of variable assignment used in this project.
Be sure to conform with the parameter guideline when specifying your parameters so that the pipeline will work as expected.

## Improvement
This project is still at the early stage hence will appreciate suggestions for improvement.

## External links
1) Stream EDitor (sed) operation: https://www.cyberciti.biz/faq/how-to-use-sed-to-find-and-replace-text-in-files-in-linux-unix-shell/
                                  https://askubuntu.com/questions/76808/how-do-i-use-variables-in-a-sed-command
2) Writing command output to a file: https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file
3) Querrying cloudformation for a specific key: https://stackoverflow.com/questions/41628487/getting-outputs-from-aws-cloudformation-describe-stacks
4) Rolling updates: https://www.bluematador.com/blog/kubernetes-deployments-rolling-update-configuration
5) Passing file content to a variable: https://www.unix.com/unix-for-dummies-questions-and-answers/91540-how-assign-content-file-variable.html
                                  
