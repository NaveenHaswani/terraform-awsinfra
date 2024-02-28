pipeline {
    agent any

      tools {
        // Define the Terraform tool installation
        terraform 'Terraform'
    }

    environment {
        // Define environment variables to store AWS credentials
        AWS_ACCESS_KEY_ID     = credentials('Naveenhaswani_aws')
        AWS_SECRET_ACCESS_KEY = credentials('Naveenhaswani_aws')
    }

    stages {
              
        stage('Terraform init') {
            steps {
                  // Initialize Terraform
                    sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {            
                 // Apply Terraform changes
                    sh 'terraform apply --auto-approve'
            }
        }
    }
}
