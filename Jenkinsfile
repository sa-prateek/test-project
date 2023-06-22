pipeline {
    agent any
    // environment {
    //     registryCredential = 'ecr:ap-south-1:awscreds'
    //     appRegistry = "391579151008.dkr.ecr.ap-south-1.amazonaws.com/jenkinsappimg"
    //     jenkinsRegistry = "https://391579151008.dkr.ecr.ap-south-1.amazonaws.com"
    // }
    
    stages {
        stage('fetch code') {
            steps {
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

        stage('Unit test') {
            steps {
                sh 'mvn test'
            }
            post {
                success {
                    echo 'Test Successful...'
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
/*
        stage('Build App Image') {
            steps {
                script {
                    dockerImage = docker.build( appRegistry + ":$BUILD_NUMBER", ".")
                }
            }
        }

        stage('Upload App Image') {
          steps{
            script {
                docker.withRegistry( jenkinsRegistry, registryCredential ) {
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push('latest')
                    }
                }
            }
        }
        
        stage('Run Container') {
            steps {
                script {
                    def portMapping = '3000:8080'
                    sh "docker run -d -p ${portMapping} --name my-container ${appRegistry}:${BUILD_NUMBER}"
                }
            }
        }
*/
        stage('Cleanup') {
            steps {
                deleteDir() // Delete the workspace
            }
        }
    }
}
