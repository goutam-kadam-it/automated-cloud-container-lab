pipeline {
    agent any

    environment {
        IMAGE_NAME = "goutamkadam/cloud-app"
        IMAGE_TAG  = "${BUILD_NUMBER}"
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop cloud-app || true
                docker rm cloud-app || true
                docker run -d --name cloud-app -p 80:8080 ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }
    }
}
