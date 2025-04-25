pipeline {
    agent any

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t flask-app .'
            }
        }
    }
}
