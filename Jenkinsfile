#!groovy
branch = env.BRANCH_NAME
def dockerImageTag
def dockerImage
def baseImage = 'nginx'
def dockerImageRepo = 'anandtest/nginximages'


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
        stage('Build an Image') {
            steps {
                echo "Building Docker Image"
                script {
                       docker.image(baseImage).inside { 
							sh ' ls -ltr'
                        }
                dockerImage = docker.build "dockerImageRepo:${dockerImageTag}"
                    sh 'docker images'
                    sh 'docker ps -a'
                    echo "$dockerImage"
                    
                }
            }
        }
	}
}
