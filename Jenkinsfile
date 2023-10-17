pipeline {
    agent any
    environment {
            DOCKER_REGISTRY_CREDENTIALS = credentials('mydoctocken')
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
                    withCredentials([usernamePassword(credentialsId: DOCKER_REGISTRY_CREDENTIALS, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        bat "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD https://hub.docker.com/repository/docker/advaya1sourav"
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
                        bat "docker push advaya1sourav/spring-app"
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
}
