pipeline {    
    agent any
    stages {
        stage ('clone') {
            steps {
                git url: "https://github.com/chandushine/nopcommerce-deployment.git",
                branch: "master"
            }
        }
        stage ('build') {
            steps {
                sh './commands.sh'
            }
        }
    }
}

