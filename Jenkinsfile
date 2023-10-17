pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/advaya1sourav/myrepooo.git'
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
        }
}
