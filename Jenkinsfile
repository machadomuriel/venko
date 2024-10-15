pipeline {
    //agent any
    agent { 
        node {
            label 'docker-agent-alpine'
            }
    }
    stages {
        // stage('Clonar Repositório') {
        //     steps {
        //         // Clona a branch main via HTTPS
        //         git branch: 'main', url: 'https://github.com/machadomuriel/venko.git'
        //     }
        // }
        stage('Build') {
            steps {
                // Comandos para build (ajuste conforme necessário)
                echo 'Iniciando build...'
                sh 'java --version'
                sh 'apk update'
                sh 'apk add python3 py3-pip' // Instala o Python3 e o pip
                sh 'python3 -m venv venv' // Cria o ambiente virtual
                sh '. venv/bin/activate && pip install --upgrade pip' // Ativa o ambiente e atualiza o pip
                sh '. venv/bin/activate && pip install robotframework' // Instala o Robot Framework no ambiente virtual
                sh '. venv/bin/activate && robot --version' // Verifica a versão do Robot Framework
                // Exemplo: sh 'make build'
            }
        }
        stage('Testes') {
            steps {
                // Comandos para rodar os testes (ajuste conforme necessário)
                echo 'Rodando testes...'
                // Exemplo: sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                // Comandos para deploy (ajuste conforme necessário)
                echo 'Iniciando deploy...'
                // Exemplo: sh 'make deploy'
            }
        }
    }
}