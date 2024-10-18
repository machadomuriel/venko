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
    post {
        always {
            robot outputPath: '.', logFileName: 'log.html', outputFileName: 'output.xml', reportFileName: 'report.html', passThreshold: 100, unstableThreshold: 75.0
        }
    }
}
