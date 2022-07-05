pipeline {
    agent any

    stages {
        stage('features export') {
            steps {
                echo "Test Plan is: "
            }
        }
        stage('test') {
            steps {
                echo 'test'
            }
        }
        stage('result import.') {
            steps {
                echo 'result import...'
                script {
                    def curl_cmd = """curl -u jing.liang_1@signify.com:${Password} -H "Content-Type: application/json" -X GET "https://www.tracker.dtf.lighting.com/rest/raven/2.0/export/test?keys=MSI-1118&fz=true" -o features.zip"""
                    println(curl_cmd)
                    bat "${curl_cmd}"
                }
                echo "${WORKSPACE}/features"
                sh "unzip -o ${WORKSPACE}/features.zip -d features"
            }
        }
    }
}