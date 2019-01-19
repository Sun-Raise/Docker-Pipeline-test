#!groovy

def gitInfo

pipeline {
    agent any
    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir()
                echo 'Cleanup done'
            }
        }  
        stage('Initialization') {
        	steps {
        	    checkout scm
        	    script {
                    gitInfo = getGitInfo()
                    echo "the change owner ${gitInfo.git_author} (${gitInfo.git_email})"
                }

        	}

        }
	}
}
