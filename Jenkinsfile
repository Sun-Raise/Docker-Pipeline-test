
def dockerRegistry = 'hub.docker.com' 
def buildImage = 'nginx'
def dockerImageTag = 'anandtest/nginximages'


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
                script {
					gitinfo = getGitInfo()
					dockerTag = "${env.BRANCH_NAME}-${gitInfo.git_commit}"
					echo "the change owner ${gitinfo.git_author} (${gitinfo.git_email})"
                    echo "Initialization Done"
                }
            }
        }
		stage('Docker Publish to Registry') {
			steps {
				scripts {
				// 
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
                    dockerImage = docker.build "${dockerRegistry}:${dockerImageTag}"
                    sh 'docker images'
                    sh 'docker ps -a'
                    echo "$dockerImage"
                    
                }
            }
        }
    } 
}



        
        stage('Docker Publish to Registry') {
            steps {
                echo "Publishing to Docker: ${dockerRegistry}/${dockerImageRepo}:${dockerImageTag}"
                sh 'docker login --username="anandgit71" --password="anandgit12" ${dockerRegistry}'
                sh 'dockerImage.push();'
                }
            } 
