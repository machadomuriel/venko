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
            // Publicação dos relatórios do Robot Framework
            robot outputPath: '.', logFileName: 'log.html', outputFileName: 'output.xml', reportFileName: 'report.html', passThreshold: 100, unstableThreshold: 75.0

            // Envio de e-mail com os relatórios anexados
            emailext (
                subject: "Resultado da Execução do Pipeline: ${currentBuild.fullDisplayName}",
                body: """<p>A execução do pipeline <b>${currentBuild.fullDisplayName}</b> foi concluída.</p>
                         <p>Status: ${currentBuild.currentResult}</p>
                         <p>Veja os relatórios anexados.</p>""",
                recipientProviders: [[$class: 'DevelopersRecipientProvider']],
                attachmentsPattern: "report.html, log.html, output.xml",
                to: 'machadomuriel@gmail.com',
                from: 'machadomuriel@gmail.com',
                replyTo: 'machadomuriel@gmail.com',
                mimeType: 'text/html'
            )
        }
    }
}