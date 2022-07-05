/**
  * This class covers general routines to interact with Jira
  *
  * @author Jing Liang
  *
  */

//def jiraBaseURL = 'https://jing.liang_1@signify.com:Lj@53057@www.tracker.dtf.lighting.com'
//def jiraAPIURLString = '/rest/raven/2.0/export/test?keys='
//def jiraKey = 'MSI-1108'

class jiraInterface {

    private context

    public jiraInterface (context, String jiraBaseURL, String jiraAPIURLString, String jiraKey) {
        this.context          = context
        this.jiraBaseURL      = jiraBaseURL
        this.jiraAPIURLString = jiraAPIURLString
        this.jiraKey          = jiraKey
    }

    public void exportFeatureFiles () {
        def response = this.context.httpRequest acceptType: 'APPLICATION_JSON',
                                                contentType: 'APPLICATION_JSON',
                                                httpMode: 'GET',
                                                url: this.jiraBaseURL + this.jiraAPIURLString + this.jiraKey
        println(this.jiraBaseURL + this.jiraAPIURLString + this.jiraKey)
    }

}
def test = new jiraInterface(this, jiraBaseURL, jiraAPIURLString, jiraKey)


pipeline {
    agent {
        label 'MasterConnect_macMini'
    }

    stages {
        stage('features export') {
            steps {
                echo 'features export'
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
            }
        }
    }
}