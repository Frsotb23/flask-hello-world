pipeline {
    agent any
    stages {
        stage('Pull Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Frsotb23/flask-hello-world.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-hello-world .'
            }
        }
        stage('Run Container') {
            steps {
                sh '''
                docker rm -f flask-container || true
                docker run -d -p 5000:5000 --name flask-container flask-hello-world
                '''
            }
        }
    }
}
