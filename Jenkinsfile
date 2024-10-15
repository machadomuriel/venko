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
                sh 'apk add python3'
                sh 'python3 --version'
                sh 'apk add py3-pip'
                sh 'python -m venv .venv'
                sh 'source .venv/bin/activate'
                sh 'pip install robotframework'
                sh 'robot --version'
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