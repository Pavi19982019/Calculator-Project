pipeline {
    agent any
    tools any 
    {
        maven 'mvn 9.9.9'
    }
    environment{
        DOCKER_IMAGE='ennavazhkaida'
        CONTAINER_NAME='Pipelincontainer'
    }
    stages {
        stage('Git Clone') {
            steps {
                // Fixed: No trailing comma, clean parameter list
                git branch: 'main', 
                    credentialsId: 'GitHub_Credentials', 
                    url: 'https://github.com/Pavi19982019/Calculator-Project.git'
            }
        }
        stage('Docker Build') {
            steps {
                // Fixed: Lowercase tag and ensuring the '.' points to the Dockerfile location
                bat 'docker build -t %DOCKER_IMAGE%:%BUILD_NUMBER% . '
            }
        }
        stage('Docker Container') {
            steps {
                // Fixed: Lowercase tag and ensuring the '.' points to the Dockerfile location
                bat 'docker run -d -p 8081:91 --name=%CONTAINER_NAME%-%BUILD_NUMBER% %DOCKER_IMAGE%:%BUILD_NUMBER%'
            }
        }
    }
}
