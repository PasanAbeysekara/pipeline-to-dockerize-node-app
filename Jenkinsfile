pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                script{
                    docker.build('simple-app')
                }
            }
        }
        stage('Test'){
            steps{
                script{
                    docker.run('simple-app', '-p 3000:3000')
                }
            }
        }
    }
}