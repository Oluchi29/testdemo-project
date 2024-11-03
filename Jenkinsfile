pipeline{
    agent any
    stages{
         stage("GitHub checkout") {
            steps {
                script {
 
                    git branch: 'main', url: 'https://github.com/Oluchi29/testdemo-project.git' 
                }
            }
        }
        stage("Build docker image"){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t luchi1985/image3.0'
            }
        }
         stage("push image to DockerHub"){
            steps{

               script {
                  
                 withCredentials([string(credentialsId: 'dockerID', variable: 'dockerID')]) {
                    sh 'docker login -u luchi1985 -p ${dockerID}'
            }
              sh 'docker push luchi1985/image3.0:latest'
            }
        }
    }
    }
}

    