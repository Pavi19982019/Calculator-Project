pipeline {
    agent any 
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
