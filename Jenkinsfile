#!groovy
branch = env.BRANCH_NAME
def dockerImageTag
def buildImage = 'nginx'
def dockerImage
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
                       docker.image(buildImage).inside { 
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
