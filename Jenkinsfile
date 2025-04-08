pipeline {
    agent any
    environment {
        CLIENT_ID = "723565485D034E88A38F489D94D11E17"
        SECRET_ID = "49061d773899f0f538536b49bc60d517787c8c591d3f68efab6de36728aa8761"
        XRAY_AUTH_URL = 'https://xray.cloud.getxray.app/api/v2/authenticate'
        GIT_REPO = 'https://github.com/WilliamLAY-dev/RobotFrameWork_POM.git'
        XRAY_TOKEN = ""
    }

    stages {
        stage('Générer le token Xray') {
            steps {
                script {
                    def authResponse = bat(
                        script: """
                            curl -H "Content-Type: application/json" -X POST --data ^
                            "{\\"client_id\\": \\"${CLIENT_ID}\\", \\"client_secret\\": \\"${SECRET_ID}\\"}" ^
                            ${XRAY_AUTH_URL} 2> nul
                        """,
                        returnStdout: true
                    ).trim()

                    // Récupère la dernière ligne = le token
                    def lines = authResponse.readLines()
                    def token = lines[1].replaceAll('"', '').trim()

                    XRAY_TOKEN = token
                    echo "Xray Token: ${XRAY_TOKEN}"
                }
            }
        }


        stage('Test') {
            steps {
                script {
                    bat 'robot -d Logs tests/' // Exécute les tests
                }
            }
        }

        stage('Exporter le résultat sur Xray') {
            steps {
                script {
                    def ExportResponse = bat(
                        script: """
                            curl -H "Content-Type: text/xml" -X POST -H "Authorization: Bearer ${XRAY_TOKEN}"  --data @"output.xml" https://xray.cloud.getxray.app/api/v2/import/execution/robot?projectKey=POEI20252
                        """,
                        returnStdout: true
                    ).trim()

                    echo "Features de Xray exportées : ${ExportResponse}"
                }
            }
        }

    }
}
