pipeline {
	agent any

	stages {
		
		stage('Build') {
            steps {
                // Build the Maven project
                sh 'mvn clean package'
            }
        }

		stage('Test') {
            steps {
                // Run the Maven tests
                sh 'mvn test'
            }
        }

	}
}
