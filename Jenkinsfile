pipeline {
	agent any

	environment {
		mavenHome = tool 'jenkins-maven'
	}

	tools {
		jdk 'java-8'
	}

	stages {

		stage('Build'){
			steps {
				bat "mvn clean install -DskipTests"
			}
		}

		stage('Test'){
			steps{
				bat "mvn test"
			}
		}

		stage('Deploy') {
			steps {
                echo "Deploying on nexus" 
			   // bat "mvn jar:jar deploy:deploy"

			}
		}
	}
}