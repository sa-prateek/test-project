pipeline {
    agent any
    tools {
	    maven "Maven3"
	    jdk "OracleJDK"
	}

	stages {
	   
	stage('Build') {
            steps {
                sh 'mvn install'
            }
            post {
                success {
                    echo 'Now Archiving...'
                }
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
