pipeline {
    agent any
    
    stages {
        stage('Clonar Repositório') {
            steps {
                // Clona a branch main via HTTPS
                git branch: 'main', url: 'https://github.com/machadomuriel/venko.git'
            }
        }
        stage('Build') {
            steps {
                // Comandos para build (ajuste conforme necessário)
                echo 'Iniciando build...'
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