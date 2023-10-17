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
                script {
                    // Build the Docker image from your source code
                    bat "docker build -f Dockerfile.dockerfile -t advaya1sourav/spring-app ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Push the Docker image to the registry
                    bat "docker push advaya1sourav/spring-app"
                }
            }
        }

        stage('Deploy Image') {
            steps {
                script {
                    // Update the image in your Kubernetes deployment
                    bat "kubectl set image deployment/spring-app-deployment myspring=advaya1sourav/spring-app"
                }
            }
        }
    }
}
