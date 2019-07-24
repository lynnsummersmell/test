pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Fetch Git'
                git credentialsId: 'b841e86b-f1cf-4c8e-b77f-abcf03938f4c', url: 'https://github.com/lynnsummersmell/test.git'
                sh label: '', script: 'echo `hostname`;echo `pwd`'
                echo 'Dockerfile'
                sh label: '', script: 'docker build -t lilintest/tomcat .'
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

