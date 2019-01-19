def dockerRegistry = 'hub.docker.com' 

pipeline {
    agent {
        docker { image 'node' }
    }
    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir()
                echo 'Cleanup done'
            }
        }  
    } 
}
