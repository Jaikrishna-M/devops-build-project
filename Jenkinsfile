pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Grant executable permissions to the build script
                chmod 'a+x build.sh'
                // Build the Docker image using the build script
                echo 'build script now script file'
                sh './build.sh'
                echo 'Build executed Successfully'
            }
        }
    }
}
