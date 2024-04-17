pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t simple-app .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run -d -p 3000:3000 simple-app'
                sh 'curl http://localhost:3000'
            }
        }
    }
    post {
        always {
            sh 'docker stop simple-app'
            sh 'docker rm simple-app'
        }
    }
}
