pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "flask-app"
    }

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning the repository...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                script {
                    // Ensure Docker is installed and accessible
                    def dockerInstalled = sh(script: 'which docker', returnStatus: true)
                    if (dockerInstalled != 0) {
                        error 'Docker is not installed or accessible.'
                    } else {
                        sh 'docker build -t ${DOCKER_IMAGE} .'
                    }
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker image to registry...'
                script {
                    // Assuming you have already logged in to Docker
                    sh 'docker push ${DOCKER_IMAGE}'
                }
            }
        }
    }

    post {
        failure {
            echo 'Build failed!'
        }
        success {
            echo 'Build successful!'
        }
    }
}
