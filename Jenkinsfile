#!groovy
branch = env.BRANCH_NAME
def dockerImageTag
def dockerImage
def baseImage = 'nginx'
def dockerimagerepo = 'anandtest/nginximages'
def dockerRegistry = 'hub.docker.com'


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
			dockerImage = docker.build "${dockerimagerepo}:${dockerImageTag}"
                    sh 'docker images'
                    sh 'docker ps -a'
                    echo "$dockerImage"
                    
                }
            }
        }
        stage('Docker Publish to Registry') {
			steps {
				echo "Pushing Docker image to Registory"
				script {
					sh 'docker login --username="anandgit71" --password="anandgit12" ${dockerRegistry}'
					sh 'dockerImage.push()'
					
				}
			}
		}
	}
}
