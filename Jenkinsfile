pipeline {
    agent any
    environment {
        DOCKER_REGISTRY_CREDENTIALS = credentials('mydoctocken')
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from your Git repository
                git branch: 'main', url: 'https://github.com/advaya1sourav/myrepooo.git'
            }
        }
        stage('Docker login') {
            steps {
                script {
                    // Log in to your Docker registry
                     withCredentials([usernamePassword(credentialsId: DOCKER_REGISTRY_CREDENTIALS, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')])
                     {
                        bat "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD https://hub.docker.com"
                    }
                }
            }
        }
    }
}
