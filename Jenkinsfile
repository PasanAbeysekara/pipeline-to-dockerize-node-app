pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t simple-app .'
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
