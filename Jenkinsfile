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
                bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR  --password-stdin'
            }
        }
    }
}
