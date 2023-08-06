pipeline {
     agent any
     environment {
                dockerRun = 'docker container run -itd --name sunny -p 8081:80 amansunny08/aman-image:v1'
            }

    stages {
        stage('checkout') {
            steps {
               git branch: 'main', credentialsId: 'git-id', url: 'https://github.com/amansunny08/jenkins-docker.git'
            }
        }
        stage('build image') {
            steps {
                sh 'docker build -t aman-image:v1 .'
            }
        }
        stage('add tag') {
            steps {
                sh 'docker image tag aman-image:v1 amansunny08/aman-image:v1'
                sh 'docker image rm aman-image:v1'
            }
        }
        stage('docker login') {
            steps {
                withCredentials([string(credentialsId: 'docker1', variable: 'dockerhub')]) {
                      sh 'docker login -u amansunny08 -p $dockerhub'
                }
            }
        }
        stage('push image') {
            steps {
                sh 'docker push amansunny08/aman-image:v1 '
            }
        }
        stage('docker logout') {
            steps {
               sh 'docker logout'
               sh 'cat ~/.docker/config.json'
            }
        }
        stage('Launch container on remote host') {
            steps {
                script {
                    def remote = [:]
                    remote.name = 'test'
                    remote.host = '10.0.0.16'
                    remote.user = 'root'
                    remote.password = 'redhat'
                    remote.allowAnyHosts = true
                    def containerId = sshCommand(remote: remote, command:"docker ps -aqf \"name=aman\"").trim()
                    if (containerId) {
                        sshCommand(remote: remote, command:docker stop ${containerId} && docker rm ${containerId})
                    }
                    sshCommand remote: remote, command: "docker ps"
                    sshCommand remote: remote, command:  "${dockerRun}"
                    sshCommand remote: remote, command: "docker ps"
                    }
                }
            }    
        }
    }

