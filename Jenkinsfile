pipeline {
    agent any
    environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/advaya1sourav/myrepooo.git'
            }
        }
        stage('Docker login') {
            steps {
                script {
                    // Build the Docker image from your source code
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image from your source code
                    bat " docker build -f Dockerfile.dockerfile .  -t advaya1sourav/spring-app"
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    // Log in to your Docker registry (if needed)
                        bat "docker  -u $DOCKER_USERNAME -p $DOCKER_PASSWORD your-docker-registry-url push advaya1sourav/spring-app"
                    }
                }
            }
        stage('Deploy Image') {
            steps {
                script {
                    // Log in to your Docker registry (if needed)
        
                        bat "kubectl set image deployment/spring-app-deployment myspring=advay1sourav/spring-app"
                    }
                }
            }
        }
}
