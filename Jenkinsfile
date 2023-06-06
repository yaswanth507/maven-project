pipeline {
    agent any
    tools {
  maven 'Maven 3'
}
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/yaswanth507/maven-project.git'
            }
        }

        stage('Build') {
            steps {
                tool 'Maven 3' // Configure the Maven tool name in Jenkins
                sh 'mvn clean install'
            }
        }
        
       stage('Docker Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }
      stage('Docker Push') {
            steps {
                withCredentials([string(credentialsId: 'dockerpwd', variable: 'Docker ')]) {
                  sh 'docker login -u yashu507 p ${dockerpwd}'
          }
                  sh 'docker push yashu507/my-app-1.0'
         } 
         }
        }
        
      }
      
