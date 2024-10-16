pipeline {
    agent { 
        node {
            label 'jenkins-agent-python'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                    python3 -m venv venv
                    . venv/bin/activate
                    pip install -r requirements.txt
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
