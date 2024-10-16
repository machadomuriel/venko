pipeline {
    agent { 
        node {
            label 'docker-agent-alpine'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                    apk update
                    apk add python3 py3-pip
                    python3 -m venv venv
                    . venv/bin/activate
                    pip install --upgrade pip
                    pip install robotframework
                '''
            }
        }
        stage('Testes') {
            steps {
                sh '''
                    . venv/bin/activate
                    robot exemplo_teste.robot 
                '''
            }
        }
    }
}
