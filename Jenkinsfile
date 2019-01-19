#!groovy
branch = env.BRANCH_NAME
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
        stage('Initialization') {
        	steps {
        	    checkout scm
        	    script {
                    echo "Hello anand"
			    	echo "${branch}"
			    	dockerImageTag = "$BUILD_NUMBER"
			    	echo "The Job build number are $dockerImageTag"
                }

        	}

        }
	}
}
