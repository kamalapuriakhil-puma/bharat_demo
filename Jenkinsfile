// Jenkinsfile
pipeline {
    agent any // Or a specific agent with Java/Maven installed

    tools {
        // Specify the name of the Maven tool configured in Jenkins
        // Go to Manage Jenkins -> Global Tool Configuration to set this up
        maven 'Maven 3.8.6' 
    }

    stages {
        stage('Build') {
            steps {
                // This command compiles the code, runs tests, and packages it.
                // It will create a .jar or .war file in the 'target' directory.
                sh 'mvn clean package' 
            }
        }
    }
}
