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
                    sh " docker build -f Dockerfile.dockerfile .  -t advaya1sourav/spring-app"
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    // Log in to your Docker registry (if needed)
                        sh "docker push advaya1sourav/spring-app"
                    }
                }
            }
        }
}







        
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Load the Kubernetes configuration from a secret
                    withKubeConfig(credentialsId: 'your-kubeconfig-credentials-id', kubeconfigContext: 'your-kube-context') {
                        // Deploy the application to the Kubernetes cluster
                        sh "kubectl set image deployment/your-deployment-name your-container-name=$DOCKER_IMAGE"
                    }
                }
            }
        }
    }
    
    post {
        success {
            // You can add post-build actions here, such as notifications or cleanup
            echo 'Deployment successful!'
        }
    }
}
