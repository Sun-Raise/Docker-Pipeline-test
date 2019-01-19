#!groovy

buildNumber = BUILD_NUMBER
author = GIT_BRANCH
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
                    echo "Hello anand"
	            echo "$buildNumber"
	            echo "$BUILD_NUMBER"
		    echo  "$author"
                }

        	}

        }
	}
}
