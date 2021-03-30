pipeline {

    agent {
        docker {
            image 'ruby'
        }
    }

    stages{
        stage("Build"){
            steps{
                echo "Building or Resolve dependecies!"
                sh 'bundle install'
            }
        }
        stage("Test"){
            steps{
                echo "Building or Resolve dependecies!"
            }
        }
        stage("UAT"){
            steps{
                echo "Building or Resolve dependecies!"
            }
        }
          stage("PROD"){
            steps{
                echo "Building or Resolve dependecies!"
            }
        }
    }
}