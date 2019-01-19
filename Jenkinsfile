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
                scripts {
					// gitinfo = getGitInfo()
					// dockerTag = "${env.BRANCH_NAME}-${gitInfo.git_commit}"
					// echo "the change owner ${gitinfo.git_author} (${gitinfo.git_email})"
                    echo "Initialization Done "
                }
            }
        }
		stage('Build') {
            steps {
                echo "Building Docker Image"
                script {
                       docker.image(buildImage).inside { 
					    // sh 'npm --version'
						sh ' ls -ltr'
                        			// sh 'npm install'
						// sh 'npm install joi'
						// sh 'npm install express'
                        }
                    dockerImage = docker.build "${dockerImageTag}:${date}"
                    sh 'docker images'
                    sh 'docker ps -a'
                    echo "$dockerImage"
                    
                }
            }
        }
		stage('Docker Publish to Registry') {
			steps {
				echo "Pushing Docker image to Registory"
				scripts {
					docker login --username="anandgit71" --password="anandgit12" ${dockerRegistry}
					dockerImage.push();
					
				}
			}
		}
    } 
}
