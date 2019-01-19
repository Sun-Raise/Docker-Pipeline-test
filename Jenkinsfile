#!groovy

def dockerRegistry = 'hub.docker.com' 
def buildImage = 'nginx'
def dockerTag = 'anandtest/nginximages'
branch = env.BRANCH_NAME


def gitInfo
def dockerImageTag
def commit_id

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
		    scripts {
			    git rev-parse --short HEAD > .git/commit-id
			    commit_id = readFile('.git/commit-id')
			    echo " These are the ID ${commit_id}"
		    }                    
            }
        }
    } 
}
