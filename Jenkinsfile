pipeline {
    agent any
    stages {
        stage('Build and deploy') {
            steps {
               
                sh 'chmod +x build.sh'
                echo 'build.sh is now script file'
                sh './build.sh'
                echo 'Build executed Successfully'

                sh 'chmod +x deploy.sh'
                echo 'deploy.sh is now script file'
                sh './deploy.sh'
                echo 'Deploy executed Successfully'
            }
        }
    }
}
