pipeline {
    agent {
        docker {
            image "python:3.12.0-alpine3.18"
        }
    }
    stages {
        stage('Preparation') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test')  {
            steps {
                sh 'robot -d ./logs tests'
            }  
            post {
                always {
                    robot otherFiles: "**/*.png", outputPath: "logs"
                }
            }              
        }
    }
}