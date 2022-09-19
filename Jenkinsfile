pipeline {
    agent { label 'slave' }
	tools {maven "maven-new"}

    stages {
        stage('github-latest') {
            steps {
               git 'https://github.com/testdevops888/mvnproj.git'
            }
        }
        stage('build-code') {
            steps {
               sh '''
               pwd
               mvn clean package
               '''
            }
        }
		stage('copy-code') {
            steps {
               sh '''
                sudo cp $WORKSPACE/target/myproj.war /var/lib/tomcat9/webapps/
                 '''
            }
        }
    }
}
