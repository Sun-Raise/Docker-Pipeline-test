def dockerRegistry = 'hub.docker.com' 
def buildImage = 'node:7-alpine'
def dockerImageTag = 'latest'

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
                    echo "Initialization Done"
                }
            }
        }
		stage('Build') {
            steps {
                echo "Building Docker Image"
                script {
                       docker.image(buildImage).inside { 
                        sh 'npm install'
						// sh 'npm install joi'
						// sh 'npm install express'
                        }
                    dockerImage = docker.build "${dockerRegistry}:${dockerImageTag}"
                    sh 'docker images'
                    sh 'docker ps -a'
                    echo "$dockerImage"
                    
                }
            }
        }
    } 
}
