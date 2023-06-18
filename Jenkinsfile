pipeline {
	agent any
    tools {
	    maven "Maven3"
	    jdk "OracleJDK"
	}

	stages {

		stage('Build') {
            steps {
                sh 'mvn install -DskipTests'
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
