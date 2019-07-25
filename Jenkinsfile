pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh label: '', script: 'echo `hostname`;echo `pwd`'
                echo 'Dockerfile'
                sh label: '', script: 'docker build -t lilintest-tomcat .'
                sh label: '', script: '''REPOSITORY=reg.dong.info/p_lilin/lilintesttomcat:latest
                    IMAGENAME=lilintesttomcat:latest
                    docker login -u lilin0607 -p Hplj2300 reg.dong.info
                    docker tag $IMAGENAME $REPOSITORY
                    docker push $REPOSITORY
                    '''
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

