pipeline {
    agent { 
        node {
            label 'docker-agent-alpine'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Iniciando build...'
                sh '''
                    java --version
                    apk update
                    apk add python3 py3-pip
                    python3 -m venv venv
                    . venv/bin/activate
                    pip install --upgrade pip
                    pip install robotframework
                    robot --version
                '''
            }
        }
        stage('Testes') {
            steps {
                echo 'Rodando testes...'
                sh '''
                    . venv/bin/activate
                    robot --version
                    # Adicione seus comandos para rodar os testes aqui:
                    # robot -d results tests/
                '''
            }
        }
        stage('Deploy') {
            steps {
                echo 'Iniciando deploy...'
                sh '''
                    . venv/bin/activate
                    # Adicione seus comandos de deploy aqui
                '''
            }
        }
    }
}
