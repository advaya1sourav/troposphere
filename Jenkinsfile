pipeline {
    agent any
   
    stages {
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/test']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/advaya1sourav/myrepooo']]])     
            }
        }
      stage ('Login') {
          steps {
            sh 'docker login -u advaya1sourav  --password=dckr_pat_CUKiP_kUQfWkYWXQDKr8caRTk18'           
            }
      }
    // Building Docker images
    stage('Building image') {
      steps{
        script {
          sh "docker build -f Dockerfile.dockerfile -t advaya1sourav/spring-app ."
        }
      }
    }
    stage('pushing image') {
      steps{
        script {
          sh "docker push advaya1sourav/spring-app"
        }
      }
    }    
    stage('K8S Deploy') {
      steps{   
        script {
           withKubeConfig([credentialsId: 'K8S', serverUrl: '']) {
            sh ('kubectl apply  -f /tmp/kuber.yml')
            }
          }
        }
       }
    }
}
