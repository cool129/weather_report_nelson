pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/cool129/weather_report_nelson.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t weather-report-nelson:latest -f backend/Dockerfile ./backend'
                }
            }
        }
        
        stage('Deploy to qa_server') {
            steps {
                script {
                    sh 'docker run -d --name weather-app weather-report-nelson:latest'
                }
            }
        }
    }
}
