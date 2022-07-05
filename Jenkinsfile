pipeline {
    agent {
        label 'MasterConnect_macMini'
    }

    stages {
        stage('features export') {
            steps {
                echo "Test Plan is: ${Test_Plan_Key}"
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
                    sh "${curl_cmd}"
                }


            }
        }
    }
}