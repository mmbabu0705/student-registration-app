pipeline {
    agent any

    stages {
        stage('Git Clone SCM') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mmbabu0705/student-registration-app.git']])
            }
        }
        stage('Compile the code') {
            steps {
                sh  'mvn compile'
            }
        }
        stage('Test the code') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Package the code') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Deploy the code') {
            steps {
                deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat_cred', path: '', url: 'http://13.233.216.252:8080/')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
