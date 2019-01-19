#!groovy

def dockerRegistry = 'hub.docker.com' 
def buildImage = 'nginx'
def dockerTag = 'anandtest/nginximages'
branch = env.BRANCH_NAME


def gitInfo
def dockerImageTag

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
                sh 'mkdir -p ./ssl'
				sh 'commitId = sh(returnStdout: true, script: 'git rev-parse HEAD')'
				sh 'echo "the commit id is ${commitId}"'
            }
        }
    } 
}
