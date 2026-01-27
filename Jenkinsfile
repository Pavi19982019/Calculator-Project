pipeline {
    agent any 
     options {
        // Keeps only the 10 most recent builds
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }
    stages {
        stage('Git Clone') {
            steps {
                // Clones your Calculator-Project from the URL in your screenshot
                git branch: 'main', 
                    credentialsId: 'GitHub_Credentials', 
                    url: 'https://github.com/Pavi19982019/Calculator-Project.git'
            }
        }
    }
}
