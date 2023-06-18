pipeline {
	agent any

    tools {
	    maven "Maven 3"
	    jdk "JDK"
	}

	stages {

		stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

		stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage ('CODE ANALYSIS WITH CHECKSTYLE'){
            steps {
                sh 'mvn checkstyle:checkstyle'
            }
            post {
                success {
                    echo 'Generated Analysis Result'
                }
            }
        }
	}
}
