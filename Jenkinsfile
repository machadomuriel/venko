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
                sh 'java --version'
                sh 'apk update'
                sh 'apk add python3 py3-pip'
                sh 'python3 -m venv venv' // Cria o ambiente virtual
                sh '. venv/bin/activate && pip install --upgrade pip' // Atualiza o pip no ambiente virtual
                sh '. venv/bin/activate && pip install robotframework' // Instala o Robot Framework no ambiente virtual
                sh '. venv/bin/activate && robot --version' // Verifica a instalação do Robot Framework
            }
        }
        stage('Testes') {
            steps {
                echo 'Rodando testes...'
                sh '. venv/bin/activate && robot --version' // Garante que o Robot Framework está rodando no ambiente virtual
                // Adicione o comando para rodar os testes do Robot aqui:
                // sh '. venv/bin/activate && robot -d results tests/'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Iniciando deploy...'
                // Comandos de deploy aqui
            }
        }
    }
}
