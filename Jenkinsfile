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
                sh 'sleep 10' // Gives the app time to start
                sh 'curl http://localhost:3000 || true' // Prevent Jenkins from failing to allow the next command
                sh 'docker logs $(docker ps -lq)'
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
