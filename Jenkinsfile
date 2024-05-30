pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Grant executable permissions to the build script
                chmod +x build.sh
                // Build the Docker image using the build script
                sh './deploy.sh'
                echo 'Build executed Successfully'
            }
        }
    }
}
