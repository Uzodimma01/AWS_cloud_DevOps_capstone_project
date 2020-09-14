pipeline {
     agent any
     stages {
         stage('Build') {
              steps {
                  sh 'echo Building...'
              }
         }
         stage('Lint files') {
              steps {
                  sh 'bash ./build_files/html_lint.sh.sh'
                  sh 'bash ./build_files/dockerfile_lint.sh'
              }
         }
         stage('Build Docker Image') {
              steps {
                  sh 'bash ./build_files/docker_build.sh'
              }
         }
         stage('Upload Image to DockerHub') {
              steps {
                  withDockerRegistry([url: "", credentialsId: "DockerHub"]) {
                      sh 'bash ./build_files/upload_docker.sh'
                      sh 'bash ./build_files/list_docker_image.sh'
                  }
              }
         }
         stage ('Create cluster') {
             steps {
                  echo 'Creating cluster ...'
                  withAWS(credentials: 'AWS', region: 'us-west-2') {
                      sh 'bash ./build_files/create_cluster.sh'
                      sh 'bash ./build_files/cluster_arn_output.sh'
                  }
             }
         }
         stage ('Create nodes') {
             steps {
                  echo 'Creating nodes ...'
                  withAWS(credentials: 'AWS', region: 'us-west-2') {
                      sh 'bash ./build_files/create_nodes.sh'
                  }
             }
         }
         stage('Deploy') {
              steps {
                   echo 'Deploying container to AWS...'
                   sh 'bash ./build_files/kubeconfig_update.sh'
                   sh 'bash ./build_files/switch_context.sh'
                   sh 'bash ./build_files/copy_deployment_file.sh'
                   sh 'bash ./build_files/modify_deployment_file.sh'
                   sh 'bash ./build_files/apply_deployment_file.sh'
                   sh 'bash ./build_files/get_nodes.sh'
                   sh 'bash ./build_files/get_deployment.sh'
                   sh 'bash ./build_files/get_pods.sh'
                   sh 'bash ./build_files/get_service.sh'
              } 
        }
        stage("Clean up") {
              steps{
                    echo 'Cleaning up...'
                    sh 'bash ./build_files/clean_up.sh'
              }
        }
     }
}
