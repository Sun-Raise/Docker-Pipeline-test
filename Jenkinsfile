pipeline {
    agent {
        docker { image 'nginx' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'nginx -version'
            }
        }
    }
}
