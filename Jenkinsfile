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
				script {
                    gitInfo = getGitInfo()
                    dockerImageTag = "${env.BRANCH_NAME}-${gitInfo.git_commit}"
                    echo "the change owner ${gitInfo.git_author} (${gitInfo.git_email})"
                }
            }
        }
    } 
}
