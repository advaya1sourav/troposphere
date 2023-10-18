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

        stage('Deploy Image') {
            steps {
                script {
                    // Update the image in your Kubernetes deployment
                    bat "kubectl version"
                }
            }
        }
    }
}
