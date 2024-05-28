pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
               
                chmod 'a+x build.sh'
                echo 'build.sh is now script file'
                sh './build.sh'
                echo 'Build executed Successfully'
            }
        }
    }
}
