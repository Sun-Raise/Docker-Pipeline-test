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
                    
                    echo "Initilization done"
                }
            }
        } 
    } 
}
