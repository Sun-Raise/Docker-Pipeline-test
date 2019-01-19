#!groovy

def dockerRegistry = 'hub.docker.com' 
def buildImage = 'nginx'
def dockerImageTag = 'anandtest/nginximages'
branch = env.BRANCH_NAME


def gitinfo
def dockerTag

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
            }
        }
    } 
}
