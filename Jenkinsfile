pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning the repo...'
                // Checkout the repository using GitSCM, which avoids the git config error
                script {
                    checkout scm
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                // Build the Docker image
                sh 'docker build -t flask-app .'
            }
        }
    }
}
