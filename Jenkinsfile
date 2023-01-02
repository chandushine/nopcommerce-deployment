pipeline {    
    agent any
    stages {
        stage ('clone') {
            steps {
                git clone: 'https://github.com/chandushine/nopcommerce-deployment.git',
                branch: 'master'
            }
        }
        stage ('build') {
            steps {
                sh './commands.sh'
            }
        }
    }
}

