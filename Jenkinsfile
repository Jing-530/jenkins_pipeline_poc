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
        stage('result import') {
            steps {
                echo 'result import...'
                script {
                    sh_script_path = "${WORKSPACE}/"
                    sh
                    '''
                        sh_script_path\\test.sh
                    '''
                }

            }
        }
    }
}