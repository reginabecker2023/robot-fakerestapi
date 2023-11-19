pipeline {
    agent {
        docker {
            image "python:3.12.0-alpine3.18"
        }
    }

    stages {
        stage('Preparation') {
            Steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test')  {
            Steps {
                sh 'robot -d ./logs tests'
            }                
        }
    }
}