pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repo...'
                // если локально то неважно jenkins уже в папке
            }
        }
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t myapp:latest .'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests in container...'
                sh 'docker run --rm myapp:latest pytest test_app.py'
            }
	}
	stage('Run') {
	    steps {
	        echo 'Running app...'
	        sh 'docker run --rm myapp:latest'
	    }
        }
    }
}
