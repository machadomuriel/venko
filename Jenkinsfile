pipeline {
    agent { 
        node {
            label 'jenkins-agent-robot'
        }
    }
    stages {
        stage('Running-Tests') {
            steps {
                sh '''
                    robot exemplo_teste.robot
                '''
            }
        }
    }
    post {
        always {
            robot outputPath: '.', logFileName: 'log.html', outputFileName: 'output.xml', reportFileName: 'report.html', passThreshold: 100, unstableThreshold: 75.0
        }
        success {
            emailext (
                subject: "Sucesso no Pipeline: ${env.JOB_NAME}",
                body: """<p>O pipeline <b>${env.JOB_NAME}</b> executou com sucesso.</p>
                         <p>Veja o relatório dos testes em anexo.</p>""",
                to: 'machadomuriel@gmail.com',
                attachLog: true,
                attachmentsPattern: 'results/output.xml',  // Relatório gerado pelo Robot Framework
                mimeType: 'text/html'
            )
        }
        failure {
            emailext (
                subject: "Falha no Pipeline: ${env.JOB_NAME}",
                body: """<p>O pipeline <b>${env.JOB_NAME}</b> falhou.</p>
                         <p>Verifique o relatório de erro em anexo.</p>""",
                to: 'machadomuriel@gmail.com',
                attachLog: true,
                attachmentsPattern: 'results/output.xml',  // Relatório gerado pelo Robot Framework
                mimeType: 'text/html'
            )
        }
    }
}
