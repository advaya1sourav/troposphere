pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-sourav')
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from your Git repository
                git branch: 'main', url: 'https://github.com/advaya1sourav/myrepooo.git'
            }
        }
        stage('Dockerlogin') {
            steps {
                bat 'docker login -u advaya1sourav  --password=dckr_pat_CUKiP_kUQfWkYWXQDKr8caRTk18'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                withCredentials([
                string(credentialsId: 'jenkins-kind', variable: 'api_token')
                ]) {

                script {
                            bat 'kubectl --token $api_token --server  https://192.168.59.101:8443 --insecure-skip-tls-verify=true version'
                            bat 'kubectl --token $api_token --server  https://192.168.59.101:8443 --insecure-skip-tls-verify=true run nginx --image=nginx'
                }
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Push the Docker image to the registry
                    bat "kubectl version"
                }
            }
        }
    }
}
