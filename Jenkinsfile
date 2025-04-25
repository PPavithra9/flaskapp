pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning the repo...'
                checkout scm // Automatically clones the repo based on Jenkins job configuration
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t flask-app .'
            }
        }
    }
}
