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
	stage('Scan') {
	    steps {
		echo 'scanning image with Trivy...'
		sh 'trivy image --no-progress myapp:latest'
	    }
	}
	stage('Run') {
	    steps {
	        echo 'Running app with .env...'
	        sh 'docker run --rm  --env-file .env myapp:latest'
	    }
        }
    }
}
