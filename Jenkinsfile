pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh label: '', script: 'echo `hostname`;echo `pwd`'
                echo 'Dockerfile'
                sh label: '', script: 'docker build -t lilintest-tomcat .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'

            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

