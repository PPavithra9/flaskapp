pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning the repo...'
                dir("${env.WORKSPACE}") {
                    git 'https://github.com/PPavithra9/flaskapp.git'
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
