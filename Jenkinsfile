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
                    # robot --version
                    # deactivate
                '''
            }
        }
        stage('Testes') {
            steps {
                echo 'Rodando testes...'
                sh '''
                    ls
                    # . venv/bin/activate
                    # robot --version
                    # Adicione aqui o comando para rodar os testes com Robot Framework, por exemplo:
                    # robot -d results tests/
                    # deactivate
                '''
            }
        }
        stage('Deploy') {
            steps {
                echo 'Iniciando deploy...'
                sh '''
                    # . venv/bin/activate
                    # Adicione aqui o comando de deploy
                    # deactivate
                '''
            }
        }
    }
}
