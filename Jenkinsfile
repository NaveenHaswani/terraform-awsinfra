pipeline {
    agent any

      tools {
        // Define the Terraform tool installation
        terraform 'Terraform'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from SCM
                checkout scm
            }
        }        
        stage('Terraform init') {
            steps {
                  // Initialize Terraform
                    sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
              {
                 // Apply Terraform changes
                    sh 'terraform apply --auto-approve'
            }
        }
    }
}
