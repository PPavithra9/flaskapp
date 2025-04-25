pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning the repo...'
                // Checkout the repository
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/main']], 
                          userRemoteConfigs: [[url: 'https://github.com/PPavithra9/flaskapp.git']]])
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
