pipeline {
    agent any
    tools {
	    maven "Maven3"
	    jdk "OracleJDK"
	}

	stages {
	   
        stage('fetch code') {
            steps{
               git branch: 'main', url: "https://github.com/sa-prateek/training-project.git"
            }  
        }

	stage('Build') {
            steps {
                sh 'mvn install -DskipTests'
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
