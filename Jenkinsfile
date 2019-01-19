def dockerRegistry = 'hub.docker.com' 
def buildImage = 'hub.docker.com/node:latest'

pipeline {
    agent any
    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir()
                echo 'Cleanup done'
            }
        }  
		stage('Init') {
            steps {
                checkout scm
                sh 'mkdir -p ./test'
                script {
                    dockerImageTag = "${env.BRANCH_NAME}"
                    echo "the change owner ${gitInfo.git_author} (${gitInfo.git_email})"
                }
            }
        } 
    } 
}
