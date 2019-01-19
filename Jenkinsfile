#!groovy
branch = env.BRANCH_NAME
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
	            echo "$BUILD_NUMBER"
			    echo "${branch}"
                }

        	}

        }
	}
}
