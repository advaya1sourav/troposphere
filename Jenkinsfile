pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('mydoctocken')
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
                bat 'echo dckr_pat_Ag8GzwLUxcbBfU4HvwH8Jf3gzY8 | docker login -u advaya1sourav  --password-stdin'
            }
        }
    }
}
