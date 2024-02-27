pipeline {
    agent any

    tools {
  terraform 'Terraform'
}
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
